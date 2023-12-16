#!/bin/bash

# 1. Prepare release
npm run release.prepare;

# 2. Version the release
npm run release.version;

# 3. Publish to NPM
npm run release.publish;