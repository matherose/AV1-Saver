# Make role to create a new tag semver style
# Create a git release and push it to the remote

MAJOR=0
MINOR=1
PATCH=3

.PHONY: help
help:
	@echo "Makefile for creating a new tag semver style"
	@echo "Usage:"
	@echo "  make tag"
	@echo "  make release"
	@echo "  make push"

.PHONY: tag
tag:
	@echo "Creating tag v$(MAJOR).$(MINOR).$(PATCH)"
	git tag v$(MAJOR).$(MINOR).$(PATCH)

.PHONY: release
release:
	@echo "Creating release v$(MAJOR).$(MINOR).$(PATCH)"
	git push origin v$(MAJOR).$(MINOR).$(PATCH)

.PHONY: push
push:
	@echo "Pushing to remote"
	git push origin main

.PHONY: clean
clean:
	@echo "Cleaning up"
	git tag -d v$(MAJOR).$(MINOR).$(PATCH)
	git push origin :refs/tags/v$(MAJOR).$(MINOR).$(PATCH)

.PHONY: all
all: tag release push