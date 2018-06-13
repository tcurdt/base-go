version=`head -1 .version`

all:
	@rm -rf dist && mkdir dist
	@tar czvf dist/name-darwin-amd64-$(version).tgz README.md
	@tar czvf dist/name-linux-386-$(version).tgz README.md
	@tar czvf dist/name-linux-amd64-$(version).tgz README.md
	@tar czvf dist/name-linux-arm-$(version).tgz README.md
	@tar czvf dist/name-linux-arm64-$(version).tgz README.md
	@tar czvf dist/name-windows-386-$(version).tgz README.md
	@tar czvf dist/name-windows-amd64-$(version).tgz README.md

release:
	@git tag -a $(version) -m "releasing $(version)"
	@git push --tags origin master
