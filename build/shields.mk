.PHONY: shields shields.assets shields.clean shields.check

shields: shields.zip

.shields.pre:
	mkdir -p shields
	touch .shields.pre

shields.clean:
	-rm shields.zip .shields.pre
	-rm -rf shields/

shields.check: shields
	.script/check_metadata_integrity.sh "shields"

shields.assets= shields/meta.json \
  shields/donotdisturb.png \
  shields/nowplaying.png \
  shields/red_power_blue_word.png \
  shields/warning_nsfw.png \
  shields/warning_r15.png \
  shields/warning_r18.png \
  shields/warning_r18g.png \
  shields/warning_spoiler.png \
  shields/warning_violence.png

shields.assets: $(shields.assets)

shields.zip: $(shields.assets)
	cd shields/ && zip ../shields.zip meta.json ./*.png

shields/meta.json: ../shields/meta.json .shields.pre
	.script/build_metadata.sh "$<" > "$@"

shields/%.png:: ../shields/%.svg .shields.pre
	resvg -z 4.0 --dpi 384 "$<" "$@"
	optipng -q --fix "$@"

shields/donotdisturb.png: .shields.pre shields/donotdisturb/000.png
	apngasm -F -d 1:24 -o shields/donotdisturb.png shields/donotdisturb/*.png

shields/donotdisturb/000.png: ../shields/donotdisturb.rawr .shields.pre
	mkdir -p shields/donotdisturb
	.script/fe_glaxnimate.sh -r shields/donotdisturb/.png --render-format png --frame all ../shields/donotdisturb.rawr

shields/nowplaying.png: .shields.pre shields/nowplaying/00.png
	apngasm -F -d 1:24 -o shields/nowplaying.png shields/nowplaying/*.png

shields/nowplaying/00.png: ../shields/nowplaying.rawr .shields.pre
	mkdir -p shields/nowplaying
	.script/fe_glaxnimate.sh -r shields/nowplaying/.png --render-format png --frame all ../shields/nowplaying.rawr
