
.PHONY: shields shields.clean

shields: shields.zip

.shields.pre:
	mkdir -p shields && \
	touch .shields.pre

shields.clean:
	-rm shields.zip .shields.pre
	-rm -rf shields/

shields.zip: shields/meta.json shields/donotdisturb.png shields/nowplaying.png shields/warning_nsfw.png shields/warning_r15.png shields/warning_r18.png shields/warning_r18g.png shields/warning_spoiler.png shields/warning_violence.png
	cd shields/ && zip ../shields.zip meta.json ./*.png

shields/meta.json: .shields.pre ../shields/meta.json
	jq -c '.' ../shields/meta.json > shields/meta.json

shields/donotdisturb.png: .shields.pre shields/donotdisturb/00.png
	apngasm -F -d 1:24 -o shields/donotdisturb.png shields/donotdisturb/*.png

shields/donotdisturb/00.png: .shields.pre ../shields/donotdisturb.rawr
	mkdir -p shields/donotdisturb && \
	.script/run_anywhere.sh glaxnimate -r shields/donotdisturb/.png --render-format png --frame all ../shields/donotdisturb.rawr

shields/nowplaying.png: .shields.pre ../shields/nowplaying.svg
	resvg -z 4.0 --dpi 384 ../shields/nowplaying.svg shields/nowplaying.png && optipng -q shields/nowplaying.png

shields/warning_nsfw.png: .shields.pre ../shields/ContentWarning/warning_nsfw.svg
	resvg -z 4.0 --dpi 384 ../shields/ContentWarning/warning_nsfw.svg shields/warning_nsfw.png && optipng -q shields/warning_nsfw.png

shields/warning_r15.png: .shields.pre ../shields/ContentWarning/warning_r15.svg
	resvg -z 4.0 --dpi 384 ../shields/ContentWarning/warning_r15.svg shields/warning_r15.png && optipng -q shields/warning_r15.png

shields/warning_r18.png: .shields.pre ../shields/ContentWarning/warning_r18.svg
	resvg -z 4.0 --dpi 384 ../shields/ContentWarning/warning_r18.svg shields/warning_r18.png && optipng -q shields/warning_r18.png

shields/warning_r18g.png: .shields.pre ../shields/ContentWarning/warning_r18g.svg
	resvg -z 4.0 --dpi 384 ../shields/ContentWarning/warning_r18g.svg shields/warning_r18g.png && optipng -q shields/warning_r18g.png

shields/warning_spoiler.png: .shields.pre ../shields/ContentWarning/warning_spoiler.svg
	resvg -z 4.0 --dpi 384 ../shields/ContentWarning/warning_spoiler.svg shields/warning_spoiler.png && optipng -q shields/warning_spoiler.png

shields/warning_violence.png: .shields.pre ../shields/ContentWarning/warning_violence.svg
	resvg -z 4.0 --dpi 384 ../shields/ContentWarning/warning_violence.svg shields/warning_violence.png && optipng -q shields/warning_violence.png
