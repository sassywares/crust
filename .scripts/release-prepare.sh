#!/bin/bash

# 1. Test the release
npm run test;

# 2. Build the release
npm run build;

# 3. Copy necessary files to the release directory
cp package.json LICENSE README.md CONTRIBUTING.md dist;