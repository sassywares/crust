# 1. Add all changes
git add .;

# 2. If there are changes to commit, commit them
if [[ $(git status --porcelain) ]]; then 
  git commit -m 'build: release prepared';
# 3. Else, do nothing
else echo 'No changes to commit'; fi