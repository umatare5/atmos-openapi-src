.PHONY: build
build:
	./scripts/build.sh

.PHONY: release
release: build
	git bump
	./scripts/release.sh
