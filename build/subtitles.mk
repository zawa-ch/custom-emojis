
.PHONY: subtitles subtitles.clean

subtitles: subtitles.zip

.subtitles.pre:
	mkdir -p subtitles && \
	touch .subtitles.pre

subtitles.clean:
	-rm subtitles.zip .subtitles.pre
	-rm -rf subtitles/

subtitles.zip: subtitles/meta.json subtitles/anadultmalecriesinsuchapitifulvoice.png subtitles/thisishowitisdeliveredtous.png subtitles/thiswillmakeitahangoroshi.png
	cd subtitles/ && zip ../subtitles.zip meta.json ./*.png

subtitles/meta.json: .subtitles.pre ../subtitles/meta.json
	jq -c '.' ../subtitles/meta.json > subtitles/meta.json

subtitles/anadultmalecriesinsuchapitifulvoice.png: .subtitles.pre ../subtitles/anadultmalecriesinsuchapitifulvoice.svg
	resvg -z 4.0 --dpi 384 ../subtitles/anadultmalecriesinsuchapitifulvoice.svg subtitles/anadultmalecriesinsuchapitifulvoice.png && optipng -q subtitles/anadultmalecriesinsuchapitifulvoice.png

subtitles/thisishowitisdeliveredtous.png: .subtitles.pre ../subtitles/thisishowitisdeliveredtous.svg
	resvg -z 4.0 --dpi 384 ../subtitles/thisishowitisdeliveredtous.svg subtitles/thisishowitisdeliveredtous.png && optipng -q subtitles/thisishowitisdeliveredtous.png

subtitles/thiswillmakeitahangoroshi.png: .subtitles.pre ../subtitles/thiswillmakeitahangoroshi.svg
	resvg -z 4.0 --dpi 384 ../subtitles/thiswillmakeitahangoroshi.svg subtitles/thiswillmakeitahangoroshi.png && optipng -q subtitles/thiswillmakeitahangoroshi.png
