#! /bin/bash

[ $# -eq 1 ] || {
	printf "build_metadata: Supports just one argument" >&2
	exit 2
}
jq -cf <(cat <<<'def add_extension: def inference_extension: if .=="image/png" then ".png" elif .=="image/apng" then ".png" elif .=="image/gif" then ".gif" elif .=="image/webp" then ".webp" else ("Can'\''t recognize type \"\(.)\"."|halt_error(1)) end; .name + (.type|inference_extension); {metaVersion:2,emojis:map({filename:add_extension,downloaded:true,emoji:({host:null}+.)})}') "$1"
