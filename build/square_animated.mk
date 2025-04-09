
.PHONY: square_animated square_animated.clean

square_animated: square_animated.zip

.square_animated.pre:
	mkdir -p square_animated && \
	touch .square_animated.pre

square_animated.clean:
	-rm square_animated.zip .square_animated.pre
	-rm -rf square_animated/

square_animated.zip: square_animated/meta.json square_animated/meijitsutomonitaikin.png
	cd square_animated/ && zip ../square_animated.zip ./*

square_animated/meta.json: .square_animated.pre ../square_animated/meta.json
	jq -c '.' ../square_animated/meta.json > square_animated/meta.json

square_animated/meijitsutomonitaikin.png: .square_animated.pre square_animated/meijitsutomonitaikin/00.png
	apngasm -F -d 1:24 -o square_animated/meijitsutomonitaikin.png square_animated/meijitsutomonitaikin/*.png

square_animated/meijitsutomonitaikin/00.png: .square_animated.pre ../square_animated/meijitsutomonitaikin.rawr
	mkdir -p square_animated/meijitsutomonitaikin && \
	.script/run_anywhere.sh glaxnimate -r square_animated/meijitsutomonitaikin/.png --render-format png --frame all ../square_animated/meijitsutomonitaikin.rawr
