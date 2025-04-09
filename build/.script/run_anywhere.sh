#! /bin/sh

if which "$1" >/dev/null 2>&1; then
	"$@"
elif which "flatpak" >/dev/null 2>&1 && appid=$(flatpak list --app --columns=application | tail --lines=+1 | jq -Rsre --arg queue "$1" 'split("\n")|map(select(.!="")|{id:.,name:(split(".")|.[length-1])}|select((.name|ascii_downcase)==($queue|ascii_downcase))|.id)|if length==1 then .[0] else null end'); then
	shift
	flatpak run "$appid" "$@"
else
	echo "$1 not found" >&2
	exit 1
fi
