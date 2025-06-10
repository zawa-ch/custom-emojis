#! /bin/bash

[ -n "$1" ] || { echo "too few arguments" >&2; exit 2; }
(
	cd "$1" || exit
	printf "Checking metadata integrity...\n"
	printf "Installed %s emoji(s).\n" "$(jq '.emojis|length' meta.json)"
	declare -i health=0
	jq -e '.emojis|map(.fileName)|length == (unique|length)' meta.json >/dev/null || { printf "Duplicate detected.\n"; health+=1; }
	while read -r i
	do
		[ -e "$i" ] || { printf "File not found: %s\n" "$i"; health+=1; }
	done  < <(jq -r '.emojis[]|.fileName' meta.json)
	printf "Done. %s error(s) found.\n" "${health}"
	[ $health -eq 0 ]
)
