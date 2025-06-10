.PHONY: handwritten handwritten.assets handwritten.clean handwritten.check

handwritten: handwritten.zip

.handwritten.pre:
	mkdir -p handwritten
	touch .handwritten.pre

handwritten.clean:
	-rm handwritten.zip .handwritten.pre
	-rm -rf handwritten/ && rmdir handwritten/

handwritten.check: handwritten
	.script/check_metadata_integrity.sh "handwritten"

handwritten.assets= handwritten/meta.json \
  handwritten/stellar_ch_handwritten_erailtu.png \
  handwritten/stellar_ch_handwritten_gupekorin.png \
  handwritten/stellar_ch_handwritten_invitingbed.png \
  handwritten/stellar_ch_handwritten_jissekikaijo.png \
  handwritten/stellar_ch_handwritten_kawaii.png \
  handwritten/stellar_ch_handwritten_kiskapula.png \
  handwritten/stellar_ch_handwritten_kiskuluva.png \
  handwritten/stellar_ch_handwritten_netemorote.png \
  handwritten/stellar_ch_handwritten_ohayo.png \
  handwritten/stellar_ch_handwritten_oyasumi.png \
  handwritten/stellar_ch_handwritten_shigotogahayai.png \
  handwritten/stellar_ch_handwritten_shigotohayasugimondai.png \
  handwritten/stellar_ch_handwritten_square_asa.png \
  handwritten/stellar_ch_handwritten_square_gupeko.png \
  handwritten/stellar_ch_handwritten_square_gutenmogen.png \
  handwritten/stellar_ch_handwritten_square_karehanomimono.png \
  handwritten/stellar_ch_handwritten_square_kojikiniattawa.png \
  handwritten/stellar_ch_handwritten_square_kawaiigasugiru.png \
  handwritten/stellar_ch_handwritten_square_kokotesutonidemasu.png \
  handwritten/stellar_ch_handwritten_square_koresuki.png \
  handwritten/stellar_ch_handwritten_square_nyan.png \
  handwritten/stellar_ch_handwritten_square_okite.png \
  handwritten/stellar_ch_handwritten_startdispute.png \
  handwritten/stellar_ch_handwritten_sugoi.png \
  handwritten/stellar_ch_handwritten_taitaikin.png

handwritten.assets: $(handwritten.assets)

handwritten.zip: $(handwritten.assets)
	cd handwritten/ && zip ../handwritten.zip meta.json ./*.png

handwritten/meta.json: ../handwritten/meta.json .handwritten.pre
	.script/build_metadata.sh "$<" > "$@"

handwritten/%.png: ../handwritten/%.svg .handwritten.pre
	resvg -z 4.0 --dpi 384 "$<" "$@"
	optipng -q --fix "$@"
