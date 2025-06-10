#! /bin/bash

if which "blender" >/dev/null 2>&1; then
	blender "$@"
elif which "blender-4.4" >/dev/null 2>&1; then
	blender-4.4 "$@"
elif which "blender-4.3" >/dev/null 2>&1; then
	blender-4.3 "$@"
elif which "blender-4.2" >/dev/null 2>&1; then
	blender-4.2 "$@"
elif which "blender-4.1" >/dev/null 2>&1; then
	blender-4.1 "$@"
elif which "blender-4.0" >/dev/null 2>&1; then
	blender-4.0 "$@"
elif which "flatpak" >/dev/null 2>&1 && appid=$(flatpak list --app --columns=application | tail --lines=+1 | jq -Rsre 'split("\n")|map(select(.=="org.blender.Blender"))|if length==1 then .[0] else null end'); then
	flatpak run "$appid" "$@"
else
	echo "blender not found" >&2
	exit 1
fi
