#!/bin/bash

# 1. Create a changeset
npx changeset;

# 2. Version the release
npx changeset version;

# 3. Generate git tags
# npx changeset tag;
# We're not using the changeset tag command as that messes up in monorepos.
# I've opened an issue here: https://github.com/changesets/changesets/issues/1284
# Alternatively, we're using the following command to manually generate a git tag from the npm version.
version="v$(npm run env | grep npm_package_version | cut -d'=' -f2)"

git tag $version

echo "Generated git tag: $version"

# 4. Commit, stage, and push the release
npm run commit && npm run push && echo 'Pushed tags to Remote';