.PHONY: precommit-dependencies changelog release changelog-patch release-patch s3

precommit-dependencies:
	# github actions helper
	pip install pre-commit
	curl -L "$(shell curl -s https://api.github.com/repos/terraform-docs/terraform-docs/releases/latest |grep -o -E "https://.+?linux-amd64.tar.gz")" > terraform-docs.tar.gz && tar -xzf terraform-docs.tar.gz terraform-docs && chmod +x terraform-docs && sudo mv terraform-docs /usr/bin/ && rm terraform-docs.tar.gz
	curl -L "$(shell curl -s https://api.github.com/repos/terraform-linters/tflint/releases/latest | grep -o -E "https://.+?_linux_amd64.zip")" > tflint.zip && unzip tflint.zip && rm tflint.zip && sudo mv tflint /usr/bin/

changelog:
	git-chglog -o CHANGELOG.md --next-tag `semtag final -s minor -o`

release:
	semtag final -s minor

changelog-patch:
	git-chglog -o CHANGELOG.md --next-tag `semtag final -s patch -o`

release-patch:
	semtag final -s patch

s3:
	find . -type f -not -path '*/.*' -exec zip -r $(TMP) {} +
	aws s3 cp $(TMP) s3://$(BUCKET)/$(notdir $(shell pwd))-$(TAG).zip
	rm $(TMP)
