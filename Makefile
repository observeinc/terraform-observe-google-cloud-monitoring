.PHONY: changelog release

TMP:=.test.zip
LEGACY_BUCKET:=observeinc
BUCKET:=observeinc-terraform-registry
TAG?=$(shell git describe --tags --always)
REPO:=$(notdir $(shell pwd))
MODULE_NAMESPACE:=observeinc
MODULE_NAME:=$(subst terraform-observe-,,$(REPO))
MODULE_SYSTEM:=observe
MODULE_VERSION:=$(TAG:v%=%)

s3:
	find . -type f -not -path '*/.*' -exec zip -r $(TMP) {} +
	aws s3 cp $(TMP) s3://$(LEGACY_BUCKET)/terraform-modules/$(REPO)-$(TAG).zip
	aws s3 cp $(TMP) s3://$(BUCKET)/artifacts/v1/modules/namespace=observeinc/name=$(MODULE_NAME)/provider=$(MODULE_SYSTEM)/version=$(MODULE_VERSION)/observeinc-$(MODULE_NAME)-$(MODULE_SYSTEM)-$(MODULE_VERSION).zip
	rm $(TMP)

list-tests:
	@scripts/tftest list

test:
	@scripts/tftest run $(filter-out $@,$(MAKECMDGOALS))
