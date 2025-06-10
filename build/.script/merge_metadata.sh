#! /bin/bash

[ $# -ge 1 ] || {
	printf "build_metadata: too few arguments" >&2
	exit 2
}
jq --slurp -c -f <(cat <<<'{metaVersion:2,emojis:(map(.emojis)|flatten)}') "$@"
