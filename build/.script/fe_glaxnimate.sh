#! /bin/bash

if which "glaxnimate" >/dev/null 2>&1; then
	glaxnimate "$@"
elif which "flatpak" >/dev/null 2>&1 && appid=$(flatpak list --app --columns=application | tail --lines=+1 | jq -Rsre 'split("\n")|map(select(.=="org.mattbas.Glaxnimate"))|if length==1 then .[0] else null end'); then
	flatpak run "$appid" "$@"
else
	echo "glaxnimate not found" >&2
	exit 1
fi
