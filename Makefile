include .project

BUILDS=\
  darwin-amd64  \
  linux-386     \
  linux-amd64   \
  linux-arm     \
  linux-arm64   \
  windows-386   \
  windows-amd64 \

DISTS=$(BUILDS:%=dist/$(NAME)-%-$(VERSION).tgz)


.PHONY:
all: $(DISTS)

dist:
	@mkdir -p dist

$(DISTS): dist
	@tar czf $@ README.md

.PHONY: clean
clean:
	@rm -rf dist

.PHONY: release
release: all
	@git tag -a $(VERSION) -m "releasing $(VERSION)"
	@git push --tags origin master
