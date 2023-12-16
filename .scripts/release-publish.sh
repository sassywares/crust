#!/bin/bash

# Check if --dry-run option is present
if [[ "$@" == *"--dry-run"* ]]; then
    dryRun=true
else
    dryRun=false
fi

# 1. CD to the release directory
cd dist

# 2. Publish to NPM (conditionally based on dry run)
if [ "$dryRun" = true ]; then
    npm publish --access=public --dry-run
else
    npm publish --access=public
fi

# 3. Echo success message (conditionally based on dry run)
if [ "$dryRun" = true ]; then
    echo "Dry run complete!"
else
    echo "Successfully published to NPM!"
fi

# 4. CD back to the root directory
cd ../
