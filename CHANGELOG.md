# [1.0.0](https://github.com/observeinc/terraform-observe-google/compare/v0.8.0...v1.0.0) (2023-01-18)


### Features

* New version of GCP App pollers ([#127](https://github.com/observeinc/terraform-observe-google/issues/127)) ([36f1a45](https://github.com/observeinc/terraform-observe-google/commit/36f1a452b7135d8df037e5c2626a57f344ef7a11))


### BREAKING CHANGES

* Pollers in Observe and Collection in GCP need to be deleted and recreated to be compatible with this version of the application.



# [0.8.0](https://github.com/observeinc/terraform-observe-google/compare/v0.7.0...v0.8.0) (2023-01-18)


### Bug Fixes

* bad counts on app home and consistency ([#121](https://github.com/observeinc/terraform-observe-google/issues/121)) ([71670fe](https://github.com/observeinc/terraform-observe-google/commit/71670fe4bc92725cee4c27952eff77dab2dc545c))
* cloud scheduler jobs count ([#126](https://github.com/observeinc/terraform-observe-google/issues/126)) ([38020f9](https://github.com/observeinc/terraform-observe-google/commit/38020f9548706c278d442a1d5ce67e09ad7b5322))
* cloud sql state visual ([#124](https://github.com/observeinc/terraform-observe-google/issues/124)) ([5c70480](https://github.com/observeinc/terraform-observe-google/commit/5c70480e7e72c235df9c6f9e0ee0f8d637acd409))
* swap source/target for some preferred paths ([#123](https://github.com/observeinc/terraform-observe-google/issues/123)) ([8a795b3](https://github.com/observeinc/terraform-observe-google/commit/8a795b37bb89147b3abda3d2660552ae1a87a1c9))


### Features

* support new cloud function events ([#122](https://github.com/observeinc/terraform-observe-google/issues/122)) ([f36c39f](https://github.com/observeinc/terraform-observe-google/commit/f36c39f7e4d4e9f78c83d039385599f6df882459))



# [0.7.0](https://github.com/observeinc/terraform-observe-google/compare/v0.6.1...v0.7.0) (2022-12-07)


### Features

* GCP App Generally Available ([#120](https://github.com/observeinc/terraform-observe-google/issues/120)) ([ba661b2](https://github.com/observeinc/terraform-observe-google/commit/ba661b2aee633c9ddc9add29b617032caf6d0986))



## [0.6.1](https://github.com/observeinc/terraform-observe-google/compare/v0.6.0...v0.6.1) (2022-11-29)


### Bug Fixes

* icon url ([#118](https://github.com/observeinc/terraform-observe-google/issues/118)) ([4a88a13](https://github.com/observeinc/terraform-observe-google/commit/4a88a137bca5f5574ac1edf2501b2a0f9f7bb1b8))
* misc fixes related to con 524 ([#115](https://github.com/observeinc/terraform-observe-google/issues/115)) ([12c35be](https://github.com/observeinc/terraform-observe-google/commit/12c35be73017bce885f7d4829369ee5bf52ed22d))
* updated GCP logo ([#117](https://github.com/observeinc/terraform-observe-google/issues/117)) ([76c2e80](https://github.com/observeinc/terraform-observe-google/commit/76c2e80667e0793266ab778b930b7e69e79b151a))



# [0.6.0](https://github.com/observeinc/terraform-observe-google/compare/v0.5.1...v0.6.0) (2022-11-15)


### Bug Fixes

* Arthur/home dash update ([#113](https://github.com/observeinc/terraform-observe-google/issues/113)) ([5d3ab4f](https://github.com/observeinc/terraform-observe-google/commit/5d3ab4f574e5871313163f4ef3fcf11c7ade6e94))
* match k8s app version ([#112](https://github.com/observeinc/terraform-observe-google/issues/112)) ([02f852b](https://github.com/observeinc/terraform-observe-google/commit/02f852b82739c74a47c4510193533fa4cff83d2f))
* set default dashboard on projects to the project overview ([#107](https://github.com/observeinc/terraform-observe-google/issues/107)) ([569ca41](https://github.com/observeinc/terraform-observe-google/commit/569ca41fad31bbcb662a0a633e8aa1c26a0d542e))
* updated Overview apps page with BigQuery ([#110](https://github.com/observeinc/terraform-observe-google/issues/110)) ([37e40db](https://github.com/observeinc/terraform-observe-google/commit/37e40dbafb62a96589657cc9fb6b97b6b59e0cbf))


### Features

* add cloud scheduler service ([#108](https://github.com/observeinc/terraform-observe-google/issues/108)) ([3adda5c](https://github.com/observeinc/terraform-observe-google/commit/3adda5c30b0392131084f804ada3697e1b98e7cd))
* gke ([#111](https://github.com/observeinc/terraform-observe-google/issues/111)) ([e1b2539](https://github.com/observeinc/terraform-observe-google/commit/e1b25397e7834c77a79b4782000c64d6d2b679fe))



## [0.5.1](https://github.com/observeinc/terraform-observe-google/compare/v0.5.0...v0.5.1) (2022-10-13)


### Bug Fixes

* add support for target pools and improve load balancer links ([#106](https://github.com/observeinc/terraform-observe-google/issues/106)) ([adc0abf](https://github.com/observeinc/terraform-observe-google/commit/adc0abf319054d06661d15d9a325195c5f354a8b))



# [0.5.0](https://github.com/observeinc/terraform-observe-google/compare/v0.4.3...v0.5.0) (2022-10-11)


### Features

* add bigquery ([313d60d](https://github.com/observeinc/terraform-observe-google/commit/313d60d94ad98d64ddf0f3a488b2a89632a46fde))
* pub sub ([#105](https://github.com/observeinc/terraform-observe-google/issues/105)) ([f140107](https://github.com/observeinc/terraform-observe-google/commit/f140107846c340e959b41f21fe75857f8bc0146a))



## [0.4.3](https://github.com/observeinc/terraform-observe-google/compare/v0.4.2...v0.4.3) (2022-10-06)


### Bug Fixes

* break out audit logs from cloud functions ([#90](https://github.com/observeinc/terraform-observe-google/issues/90)) ([5741365](https://github.com/observeinc/terraform-observe-google/commit/574136502d83e2fcb7f4292a363e10f98065ba41))
* cloud functions dash now shows 0 instead of no data ([#89](https://github.com/observeinc/terraform-observe-google/issues/89)) ([421b08d](https://github.com/observeinc/terraform-observe-google/commit/421b08d314b6512f3d8684ba77eb3f1f469e0ba1))
* update docs and units on cloud functions dashboard ([#96](https://github.com/observeinc/terraform-observe-google/issues/96)) ([c98051e](https://github.com/observeinc/terraform-observe-google/commit/c98051ea971c371db3a8acaa01fc1bf179f622fa))



## [0.4.2](https://github.com/observeinc/terraform-observe-google/compare/v0.4.1...v0.4.2) (2022-09-23)


### Bug Fixes

* remove keys that don't uniquely identify ([#88](https://github.com/observeinc/terraform-observe-google/issues/88)) ([b7d5f3f](https://github.com/observeinc/terraform-observe-google/commit/b7d5f3fd973f8b9216a3c60aa0b475f4f7c35cb7))



## [0.4.1](https://github.com/observeinc/terraform-observe-google/compare/v0.4.0...v0.4.1) (2022-09-21)


### Bug Fixes

* fix conditions for dashboard creation ([#87](https://github.com/observeinc/terraform-observe-google/issues/87)) ([28ee1f4](https://github.com/observeinc/terraform-observe-google/commit/28ee1f43ed8a4388a76d4b5dfe843f880c95c93a))
* fixes from testing and add links to project dashboard dataset to make it easier to navigate ([#85](https://github.com/observeinc/terraform-observe-google/issues/85)) ([b9a3bc4](https://github.com/observeinc/terraform-observe-google/commit/b9a3bc44bdf67ab7a5893f4e00d1cea81786ab82))
* setting enable_service_storage will no longer break app ([#86](https://github.com/observeinc/terraform-observe-google/issues/86)) ([2994fae](https://github.com/observeinc/terraform-observe-google/commit/2994faed8b67b7fca7113a8c80351db69f342945))
* updated overview to include public pre-view ([#83](https://github.com/observeinc/terraform-observe-google/issues/83)) ([6977357](https://github.com/observeinc/terraform-observe-google/commit/6977357b00b9e873438e21c4fa2dd8543d8a1c80))



# [0.4.0](https://github.com/observeinc/terraform-observe-google/compare/v0.3.9...v0.4.0) (2022-09-15)


### Bug Fixes

* update variable defaults and descriptions ([#76](https://github.com/observeinc/terraform-observe-google/issues/76)) ([c5caee2](https://github.com/observeinc/terraform-observe-google/commit/c5caee236bbb00b53d58e9913ecc8dba83adf526))
* use lookaround_joins for load balancing resource ([#78](https://github.com/observeinc/terraform-observe-google/issues/78)) ([256440c](https://github.com/observeinc/terraform-observe-google/commit/256440c4bd60caf239d0579654c94bce65f0d00a))


### Features

* add function high execution time monitor ([f532f22](https://github.com/observeinc/terraform-observe-google/commit/f532f22e3ffe5ceb6760307215774d97ffee1a4d))
* add max execution time monitor template ([#77](https://github.com/observeinc/terraform-observe-google/issues/77)) ([9b6f74a](https://github.com/observeinc/terraform-observe-google/commit/9b6f74a5c480f7f7cdc0b75c91d0f0a6c014c94b))
* add project home ([#80](https://github.com/observeinc/terraform-observe-google/issues/80)) ([53bc448](https://github.com/observeinc/terraform-observe-google/commit/53bc44812ea01fd7239f958b8e42fd0091a53b02))
* remove load balance ([#75](https://github.com/observeinc/terraform-observe-google/issues/75)) ([6b7cd6d](https://github.com/observeinc/terraform-observe-google/commit/6b7cd6d30da4f4b03b8063e876ddd13568e92913))



## [0.3.9](https://github.com/observeinc/terraform-observe-google/compare/v0.2.0...v0.3.9) (2022-09-07)


### Bug Fixes

* remove enable all variable and update tests ([#73](https://github.com/observeinc/terraform-observe-google/issues/73)) ([27bbe79](https://github.com/observeinc/terraform-observe-google/commit/27bbe793aea228fcfe8377ac4102e978af4e262b))


### Features

* project dashboard ([#72](https://github.com/observeinc/terraform-observe-google/issues/72)) ([6bbcfac](https://github.com/observeinc/terraform-observe-google/commit/6bbcfac7cab0962eb67f8ab2a31d59d6ecb31b21))



# [0.2.0](https://github.com/observeinc/terraform-observe-google/compare/v0.1.0...v0.2.0) (2022-08-22)


### Bug Fixes

* app docs ([#37](https://github.com/observeinc/terraform-observe-google/issues/37)) ([5aea18f](https://github.com/observeinc/terraform-observe-google/commit/5aea18f5511afea47aaa1bf8cfb9715e1a0844f4))
* fix cloud_sql output ([#38](https://github.com/observeinc/terraform-observe-google/issues/38)) ([a67eac3](https://github.com/observeinc/terraform-observe-google/commit/a67eac370afbf449099582ac18c8516b5e289784))
* remove start time from metrics and change project resource ([#44](https://github.com/observeinc/terraform-observe-google/issues/44)) ([52d0931](https://github.com/observeinc/terraform-observe-google/commit/52d0931aa9624beed6f6c059a052bd3ef38f1cf8))
* scrub ids from json ([#46](https://github.com/observeinc/terraform-observe-google/issues/46)) ([8101799](https://github.com/observeinc/terraform-observe-google/commit/8101799fc9434d9b11539d735252b84a84af3d81))
* update functions dashboard to use time series instead of bar graph ([#41](https://github.com/observeinc/terraform-observe-google/issues/41)) ([771cf58](https://github.com/observeinc/terraform-observe-google/commit/771cf580802063c0fce2bc6c160492e1c4359edf))
* update functions to match other services ([#53](https://github.com/observeinc/terraform-observe-google/issues/53)) ([f79cafc](https://github.com/observeinc/terraform-observe-google/commit/f79cafcf6915e66c5e1666a84d382754a4be8f3a))


### Features

* add compute dashboard ([#40](https://github.com/observeinc/terraform-observe-google/issues/40)) ([c6c9696](https://github.com/observeinc/terraform-observe-google/commit/c6c969674d89dec878a12c9afbd9f86cadea2840))
* add loadbalancing submodule ([#43](https://github.com/observeinc/terraform-observe-google/issues/43)) ([aa434c7](https://github.com/observeinc/terraform-observe-google/commit/aa434c78fba438d677cbc413443ec126a0008dd0))
* add loadbalancing submodule ([#48](https://github.com/observeinc/terraform-observe-google/issues/48)) ([95da50b](https://github.com/observeinc/terraform-observe-google/commit/95da50bf86d91cd2d64c519048554b2d0bd4dffa))
* iterate on app manifests ([#54](https://github.com/observeinc/terraform-observe-google/issues/54)) ([1112cad](https://github.com/observeinc/terraform-observe-google/commit/1112cad25580b31a7c3b3e2bcd45d40c2ed8a1e0))
* projects dashboard ([#50](https://github.com/observeinc/terraform-observe-google/issues/50)) ([3eabb27](https://github.com/observeinc/terraform-observe-google/commit/3eabb273ce949d59acf369c74dcf63d7d2d52482))
* use Observe App poller setup scheme ([#42](https://github.com/observeinc/terraform-observe-google/issues/42)) ([e2b04e0](https://github.com/observeinc/terraform-observe-google/commit/e2b04e090befe0cc55a4853b02fcdbb553300c97))



# [0.1.0](https://github.com/observeinc/terraform-observe-google/compare/6c2e2ca8c8e1b8972ee2bd21cdecf3481ad8f54c...v0.1.0) (2022-08-03)


### Bug Fixes

* Cloud Function board and metrics ([#22](https://github.com/observeinc/terraform-observe-google/issues/22)) ([d1a3bc1](https://github.com/observeinc/terraform-observe-google/commit/d1a3bc13508db4281f33905aa27f40a2f4f44797))
* left over merge conflict ([057cfbd](https://github.com/observeinc/terraform-observe-google/commit/057cfbda2285742f72ab626b36ba0060253db70c))
* missing closing brace ([7bbce87](https://github.com/observeinc/terraform-observe-google/commit/7bbce87a8505f029c47695ae63757c2ed6ca23f1))
* separate pick cols into their own stages for troubleshooting ease ([#29](https://github.com/observeinc/terraform-observe-google/issues/29)) ([7eb4ec0](https://github.com/observeinc/terraform-observe-google/commit/7eb4ec040b61e62bddabef6b46947a94818ab605))
* update Storage Monitoring dashboard ([7080c6e](https://github.com/observeinc/terraform-observe-google/commit/7080c6e84aa998418fa782e2e4eed1050e9626f0))


### Features

* Add activity log and clean up separate logs ([#33](https://github.com/observeinc/terraform-observe-google/issues/33)) ([328cea1](https://github.com/observeinc/terraform-observe-google/commit/328cea1f4d96eca462c82458c5e2a9bff2d258cc))
* add basic datasets ([#1](https://github.com/observeinc/terraform-observe-google/issues/1)) ([6c2e2ca](https://github.com/observeinc/terraform-observe-google/commit/6c2e2ca8c8e1b8972ee2bd21cdecf3481ad8f54c))
* add cloud storage service submodule ([213f0ea](https://github.com/observeinc/terraform-observe-google/commit/213f0ea4572a489e26f2a115e11ecdaa908a963e))
* add functions dashboards ([#32](https://github.com/observeinc/terraform-observe-google/issues/32)) ([b425c28](https://github.com/observeinc/terraform-observe-google/commit/b425c28337d4f4b78fa0db3c9c152d3f4c03c3f4))
* add monitors and metric for disk quota used ([#34](https://github.com/observeinc/terraform-observe-google/issues/34)) ([92a44c1](https://github.com/observeinc/terraform-observe-google/commit/92a44c1fd92673fece7d45e40cd6fc6319fe02cb))
* add project and region to dashboard ([#31](https://github.com/observeinc/terraform-observe-google/issues/31)) ([45a6ea1](https://github.com/observeinc/terraform-observe-google/commit/45a6ea10d64fe5bed2ad31b47f52348b121e8316))
* cloudsql updates for dashboard ([#25](https://github.com/observeinc/terraform-observe-google/issues/25)) ([ea64c9f](https://github.com/observeinc/terraform-observe-google/commit/ea64c9f833bd6ccde487445d39e7e91e0719d638))
* Compute - creation of compute content ([#15](https://github.com/observeinc/terraform-observe-google/issues/15)) ([1247b44](https://github.com/observeinc/terraform-observe-google/commit/1247b448bc895872df2756d0f42f2bc387661d20))
* continue build out of gcp content for cloudsql ([#23](https://github.com/observeinc/terraform-observe-google/issues/23)) ([bb01141](https://github.com/observeinc/terraform-observe-google/commit/bb01141ee45ebd229318921360e7e96628cc3b1d)), closes [#22](https://github.com/observeinc/terraform-observe-google/issues/22) [#21](https://github.com/observeinc/terraform-observe-google/issues/21)
* GCP - iteration2 - cloudsql and compute ([#19](https://github.com/observeinc/terraform-observe-google/issues/19)) ([512c6c4](https://github.com/observeinc/terraform-observe-google/commit/512c6c483939e845acb45fdbfd66c2f348df55c3))
* latest dashboard iteration with enable metrics ([#28](https://github.com/observeinc/terraform-observe-google/issues/28)) ([e763ef7](https://github.com/observeinc/terraform-observe-google/commit/e763ef7f272917c776f29b8c28a93fa24d87a157))
* metric datasets, outputs, and linting ([#5](https://github.com/observeinc/terraform-observe-google/issues/5)) ([d231bcc](https://github.com/observeinc/terraform-observe-google/commit/d231bccf42b6f3e7c8adab0ebc5a41f3d2e75b3b))
* observe app configuration ([#35](https://github.com/observeinc/terraform-observe-google/issues/35)) ([3069289](https://github.com/observeinc/terraform-observe-google/commit/3069289346a0289867455389eba9938e64a08d46))



