.PHONY: handwritten.stellar_ch handwritten.stellar_ch.assets handwritten.stellar_ch.clean

handwritten.stellar_ch: handwritten.stellar_ch.zip

.handwritten.stellar_ch.pre:
	mkdir -p handwritten/stellar_ch
	touch .handwritten.stellar_ch.pre

handwritten.stellar_ch.clean:
	-rm handwritten.stellar_ch.zip .handwritten.stellar_ch.pre
	-rm -rf handwritten/stellar_ch/ && rmdir handwritten/

handwritten.stellar_ch.assets= \
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

handwritten.stellar_ch.assets: $(handwritten.stellar_ch.assets)

handwritten.stellar_ch.zip: $(handwritten.stellar_ch.assets) handwritten/stellar_ch/meta.json
	cd handwritten/stellar_ch/ && zip ../../handwritten.stellar_ch.zip meta.json ./*.png

handwritten/stellar_ch/meta.json: ../handwritten/stellar_ch/meta.json .handwritten.stellar_ch.pre
	.script/build_metadata.sh "$<" > "$@"

handwritten/stellar_ch/%.png: ../handwritten/stellar_ch/%.svg .handwritten.stellar_ch.pre
	resvg -z 4.0 --dpi 384 "$<" "$@"
	optipng -q --fix "$@"
