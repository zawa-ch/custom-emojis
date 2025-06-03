
.PHONY: handwritten.stellar_ch handwritten.stellar_ch.clean

handwritten.stellar_ch: handwritten.stellar_ch.zip

.handwritten.stellar_ch.pre:
	-mkdir -p handwritten/stellar_ch && \
	touch .handwritten.stellar_ch.pre

handwritten.stellar_ch.clean:
	-rm handwritten.stellar_ch.zip .handwritten.stellar_ch.pre
	-rm -rf handwritten/stellar_ch/ && rmdir handwritten/

handwritten.stellar_ch.zip: \
  handwritten/stellar_ch/meta.json \
  handwritten/stellar_ch/stellar_ch_handwritten_erailtu.png \
  handwritten/stellar_ch/stellar_ch_handwritten_gupekorin.png \
  handwritten/stellar_ch/stellar_ch_handwritten_invitingbed.png \
  handwritten/stellar_ch/stellar_ch_handwritten_jissekikaijo.png \
  handwritten/stellar_ch/stellar_ch_handwritten_kawaii.png \
  handwritten/stellar_ch/stellar_ch_handwritten_kiskapula.png \
  handwritten/stellar_ch/stellar_ch_handwritten_kiskuluva.png \
  handwritten/stellar_ch/stellar_ch_handwritten_netemorote.png \
  handwritten/stellar_ch/stellar_ch_handwritten_ohayo.png \
  handwritten/stellar_ch/stellar_ch_handwritten_oyasumi.png \
  handwritten/stellar_ch/stellar_ch_handwritten_shigotogahayai.png \
  handwritten/stellar_ch/stellar_ch_handwritten_shigotohayasugimondai.png \
  handwritten/stellar_ch/stellar_ch_handwritten_square_asa.png \
  handwritten/stellar_ch/stellar_ch_handwritten_square_gupeko.png \
  handwritten/stellar_ch/stellar_ch_handwritten_square_karehanomimono.png \
  handwritten/stellar_ch/stellar_ch_handwritten_square_kojikiniattawa.png \
  handwritten/stellar_ch/stellar_ch_handwritten_square_kawaiigasugiru.png \
  handwritten/stellar_ch/stellar_ch_handwritten_square_kokotesutonidemasu.png \
  handwritten/stellar_ch/stellar_ch_handwritten_square_koresuki.png \
  handwritten/stellar_ch/stellar_ch_handwritten_square_nyan.png \
  handwritten/stellar_ch/stellar_ch_handwritten_square_okite.png \
  handwritten/stellar_ch/stellar_ch_handwritten_startdispute.png \
  handwritten/stellar_ch/stellar_ch_handwritten_sugoi.png \
  handwritten/stellar_ch/stellar_ch_handwritten_taitaikin.png
	cd handwritten/stellar_ch/ && zip ../../handwritten.stellar_ch.zip meta.json ./*.png

handwritten/stellar_ch/meta.json: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/meta.json
	jq -c '.' ../handwritten/stellar_ch/meta.json > handwritten/stellar_ch/meta.json

handwritten/stellar_ch/stellar_ch_handwritten_erailtu.png: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/stellar_ch_handwritten_erailtu.svg
	resvg -z 4.0 --dpi 384 ../handwritten/stellar_ch/stellar_ch_handwritten_erailtu.svg handwritten/stellar_ch/stellar_ch_handwritten_erailtu.png && optipng -q handwritten/stellar_ch/stellar_ch_handwritten_erailtu.png

handwritten/stellar_ch/stellar_ch_handwritten_gupekorin.png: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/stellar_ch_handwritten_gupekorin.svg
	resvg -z 4.0 --dpi 384 ../handwritten/stellar_ch/stellar_ch_handwritten_gupekorin.svg handwritten/stellar_ch/stellar_ch_handwritten_gupekorin.png && optipng -q handwritten/stellar_ch/stellar_ch_handwritten_gupekorin.png

handwritten/stellar_ch/stellar_ch_handwritten_invitingbed.png: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/stellar_ch_handwritten_invitingbed.svg
	resvg -z 4.0 --dpi 384 ../handwritten/stellar_ch/stellar_ch_handwritten_invitingbed.svg handwritten/stellar_ch/stellar_ch_handwritten_invitingbed.png && optipng -q handwritten/stellar_ch/stellar_ch_handwritten_invitingbed.png

handwritten/stellar_ch/stellar_ch_handwritten_jissekikaijo.png: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/stellar_ch_handwritten_jissekikaijo.svg
	resvg -z 4.0 --dpi 384 ../handwritten/stellar_ch/stellar_ch_handwritten_jissekikaijo.svg handwritten/stellar_ch/stellar_ch_handwritten_jissekikaijo.png && optipng -q handwritten/stellar_ch/stellar_ch_handwritten_jissekikaijo.png

handwritten/stellar_ch/stellar_ch_handwritten_kawaii.png: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/stellar_ch_handwritten_kawaii.svg
	resvg -z 4.0 --dpi 384 ../handwritten/stellar_ch/stellar_ch_handwritten_kawaii.svg handwritten/stellar_ch/stellar_ch_handwritten_kawaii.png && optipng -q handwritten/stellar_ch/stellar_ch_handwritten_kawaii.png

handwritten/stellar_ch/stellar_ch_handwritten_kiskapula.png: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/stellar_ch_handwritten_kiskapula.svg
	resvg -z 4.0 --dpi 384 ../handwritten/stellar_ch/stellar_ch_handwritten_kiskapula.svg handwritten/stellar_ch/stellar_ch_handwritten_kiskapula.png && optipng -q handwritten/stellar_ch/stellar_ch_handwritten_kiskapula.png

handwritten/stellar_ch/stellar_ch_handwritten_kiskuluva.png: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/stellar_ch_handwritten_kiskuluva.svg
	resvg -z 4.0 --dpi 384 ../handwritten/stellar_ch/stellar_ch_handwritten_kiskuluva.svg handwritten/stellar_ch/stellar_ch_handwritten_kiskuluva.png && optipng -q handwritten/stellar_ch/stellar_ch_handwritten_kiskuluva.png

handwritten/stellar_ch/stellar_ch_handwritten_netemorote.png: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/stellar_ch_handwritten_netemorote.svg
	resvg -z 4.0 --dpi 384 ../handwritten/stellar_ch/stellar_ch_handwritten_netemorote.svg handwritten/stellar_ch/stellar_ch_handwritten_netemorote.png && optipng -q handwritten/stellar_ch/stellar_ch_handwritten_netemorote.png

handwritten/stellar_ch/stellar_ch_handwritten_ohayo.png: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/stellar_ch_handwritten_ohayo.svg
	resvg -z 4.0 --dpi 384 ../handwritten/stellar_ch/stellar_ch_handwritten_ohayo.svg handwritten/stellar_ch/stellar_ch_handwritten_ohayo.png && optipng -q handwritten/stellar_ch/stellar_ch_handwritten_ohayo.png

handwritten/stellar_ch/stellar_ch_handwritten_oyasumi.png: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/stellar_ch_handwritten_oyasumi.svg
	resvg -z 4.0 --dpi 384 ../handwritten/stellar_ch/stellar_ch_handwritten_oyasumi.svg handwritten/stellar_ch/stellar_ch_handwritten_oyasumi.png && optipng -q handwritten/stellar_ch/stellar_ch_handwritten_oyasumi.png

handwritten/stellar_ch/stellar_ch_handwritten_shigotogahayai.png: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/stellar_ch_handwritten_shigotogahayai.svg
	resvg -z 4.0 --dpi 384 ../handwritten/stellar_ch/stellar_ch_handwritten_shigotogahayai.svg handwritten/stellar_ch/stellar_ch_handwritten_shigotogahayai.png && optipng -q handwritten/stellar_ch/stellar_ch_handwritten_shigotogahayai.png

handwritten/stellar_ch/stellar_ch_handwritten_shigotohayasugimondai.png: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/stellar_ch_handwritten_shigotohayasugimondai.svg
	resvg -z 4.0 --dpi 384 ../handwritten/stellar_ch/stellar_ch_handwritten_shigotohayasugimondai.svg handwritten/stellar_ch/stellar_ch_handwritten_shigotohayasugimondai.png && optipng -q handwritten/stellar_ch/stellar_ch_handwritten_shigotohayasugimondai.png

handwritten/stellar_ch/stellar_ch_handwritten_square_asa.png: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/stellar_ch_handwritten_square_asa.svg
	resvg -z 4.0 --dpi 384 ../handwritten/stellar_ch/stellar_ch_handwritten_square_asa.svg handwritten/stellar_ch/stellar_ch_handwritten_square_asa.png && optipng -q handwritten/stellar_ch/stellar_ch_handwritten_square_asa.png

handwritten/stellar_ch/stellar_ch_handwritten_square_gupeko.png: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/stellar_ch_handwritten_square_gupeko.svg
	resvg -z 4.0 --dpi 384 ../handwritten/stellar_ch/stellar_ch_handwritten_square_gupeko.svg handwritten/stellar_ch/stellar_ch_handwritten_square_gupeko.png && optipng -q handwritten/stellar_ch/stellar_ch_handwritten_square_gupeko.png

handwritten/stellar_ch/stellar_ch_handwritten_square_karehanomimono.png: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/stellar_ch_handwritten_square_karehanomimono.svg
	resvg -z 4.0 --dpi 384 ../handwritten/stellar_ch/stellar_ch_handwritten_square_karehanomimono.svg handwritten/stellar_ch/stellar_ch_handwritten_square_karehanomimono.png && optipng -q handwritten/stellar_ch/stellar_ch_handwritten_square_karehanomimono.png

handwritten/stellar_ch/stellar_ch_handwritten_square_kojikiniattawa.png: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/stellar_ch_handwritten_square_kojikiniattawa.svg
	resvg -z 4.0 --dpi 384 ../handwritten/stellar_ch/stellar_ch_handwritten_square_kojikiniattawa.svg handwritten/stellar_ch/stellar_ch_handwritten_square_kojikiniattawa.png && optipng -q handwritten/stellar_ch/stellar_ch_handwritten_square_kojikiniattawa.png

handwritten/stellar_ch/stellar_ch_handwritten_square_kawaiigasugiru.png: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/stellar_ch_handwritten_square_kawaiigasugiru.svg
	resvg -z 4.0 --dpi 384 ../handwritten/stellar_ch/stellar_ch_handwritten_square_kawaiigasugiru.svg handwritten/stellar_ch/stellar_ch_handwritten_square_kawaiigasugiru.png && optipng -q handwritten/stellar_ch/stellar_ch_handwritten_square_kawaiigasugiru.png

handwritten/stellar_ch/stellar_ch_handwritten_square_kokotesutonidemasu.png: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/stellar_ch_handwritten_square_kokotesutonidemasu.svg
	resvg -z 4.0 --dpi 384 ../handwritten/stellar_ch/stellar_ch_handwritten_square_kokotesutonidemasu.svg handwritten/stellar_ch/stellar_ch_handwritten_square_kokotesutonidemasu.png && optipng -q handwritten/stellar_ch/stellar_ch_handwritten_square_kokotesutonidemasu.png

handwritten/stellar_ch/stellar_ch_handwritten_square_koresuki.png: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/stellar_ch_handwritten_square_koresuki.svg
	resvg -z 4.0 --dpi 384 ../handwritten/stellar_ch/stellar_ch_handwritten_square_koresuki.svg handwritten/stellar_ch/stellar_ch_handwritten_square_koresuki.png && optipng -q handwritten/stellar_ch/stellar_ch_handwritten_square_koresuki.png

handwritten/stellar_ch/stellar_ch_handwritten_square_nyan.png: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/stellar_ch_handwritten_square_nyan.svg
	resvg -z 4.0 --dpi 384 ../handwritten/stellar_ch/stellar_ch_handwritten_square_nyan.svg handwritten/stellar_ch/stellar_ch_handwritten_square_nyan.png && optipng -q handwritten/stellar_ch/stellar_ch_handwritten_square_nyan.png

handwritten/stellar_ch/stellar_ch_handwritten_square_okite.png: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/stellar_ch_handwritten_square_okite.svg
	resvg -z 4.0 --dpi 384 ../handwritten/stellar_ch/stellar_ch_handwritten_square_okite.svg handwritten/stellar_ch/stellar_ch_handwritten_square_okite.png && optipng -q handwritten/stellar_ch/stellar_ch_handwritten_square_okite.png

handwritten/stellar_ch/stellar_ch_handwritten_startdispute.png: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/stellar_ch_handwritten_startdispute.svg
	resvg -z 4.0 --dpi 384 ../handwritten/stellar_ch/stellar_ch_handwritten_startdispute.svg handwritten/stellar_ch/stellar_ch_handwritten_startdispute.png && optipng -q handwritten/stellar_ch/stellar_ch_handwritten_startdispute.png

handwritten/stellar_ch/stellar_ch_handwritten_sugoi.png: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/stellar_ch_handwritten_sugoi.svg
	resvg -z 4.0 --dpi 384 ../handwritten/stellar_ch/stellar_ch_handwritten_sugoi.svg handwritten/stellar_ch/stellar_ch_handwritten_sugoi.png && optipng -q handwritten/stellar_ch/stellar_ch_handwritten_sugoi.png

handwritten/stellar_ch/stellar_ch_handwritten_taitaikin.png: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/stellar_ch_handwritten_taitaikin.svg
	resvg -z 4.0 --dpi 384 ../handwritten/stellar_ch/stellar_ch_handwritten_taitaikin.svg handwritten/stellar_ch/stellar_ch_handwritten_taitaikin.png && optipng -q handwritten/stellar_ch/stellar_ch_handwritten_taitaikin.png
