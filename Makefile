.PHONY: build lint test

build:
	@test -f README.md
	@test -f typing.svg
	@echo "Profile asset check passed."

lint:
	@git diff --check
	@echo "Whitespace check passed."

test:
	@grep -q 'Profile documentation' README.md
	@echo "Profile scope check passed."
