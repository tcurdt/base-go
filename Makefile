all:
	@rm -rf dist && mkdir dist
	@tar czvf dist/name-darwin-amd64-1.0.0.tgz README.md
	@tar czvf dist/name-linux-386-1.0.0.tgz README.md
	@tar czvf dist/name-linux-amd64-1.0.0.tgz README.md
	@tar czvf dist/name-linux-arm-1.0.0.tgz README.md
	@tar czvf dist/name-linux-arm64-1.0.0.tgz README.md
	@tar czvf dist/name-windows-386-1.0.0.tgz README.md
	@tar czvf dist/name-windows-amd64-1.0.0.tgz README.md

release:
	@git tag `head -1 .version`
	@git push --tags origin master
