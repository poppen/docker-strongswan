NAME	= poppen/strongswan

.PHONY: all
all: build clean

.PHONY: build
build: clean
	@docker build --no-cache -t $(NAME) .

.PHONY: clean
clean:
	@docker rmi -f $(NAME)

.PHONY: strongswan-version
strongswan-version: build
	$(eval STRONGSWAN_VERSION := $(shell docker run --rm $(NAME) swanctl --version 2>&1 | grep -E '^strongSwan' | cut -d' ' -f2))
	@echo $(STRONGSWAN_VERSION)

.PHONY: release
release: strongswan-version
	@gh release create --generate-notes v$(STRONGSWAN_VERSION)
	@make clean

.PHONY: test
