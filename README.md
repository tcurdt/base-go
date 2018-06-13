travis setup releases

git commit -m "released 0.0.1"
git tag v0.0.1
git push --follow-tags

or

git config --global push.followTags true

git commit -m "released 0.0.1"
git tag v0.0.1
git push
