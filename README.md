# git-sync-all-branches

```bash
git fetch --all
git branch | sed 's/^* //' | while read -r line; do
        git switch "$line"
        git pull --rebase
done
```

