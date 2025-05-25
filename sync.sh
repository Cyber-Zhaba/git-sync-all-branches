git fetch --all
git branch | sed 's/^* //' | while read -r line; do
	git switch "$(echo $line | cut -c 8-)"
	git pull --rebase
done
