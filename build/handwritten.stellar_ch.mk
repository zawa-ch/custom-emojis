
.PHONY: handwritten.stellar_ch handwritten.stellar_ch.clean

handwritten.stellar_ch: handwritten.stellar_ch.zip

.handwritten.stellar_ch.pre:
	-mkdir -p handwritten/stellar_ch && \
	touch .handwritten.stellar_ch.pre

handwritten.stellar_ch.clean:
	-rm handwritten.stellar_ch.zip .handwritten.stellar_ch.pre
	-rm -rf handwritten/stellar_ch/ && rmdir handwritten/

handwritten.stellar_ch.zip: handwritten/stellar_ch/meta.json handwritten/stellar_ch/stellar_ch_handwritten_squared_curryisdrink.png handwritten/stellar_ch/stellar_ch_handwrittenerailtu.png handwritten/stellar_ch/stellar_ch_handwrittengupekorin.png handwritten/stellar_ch/stellar_ch_handwritteninvitingbed.png handwritten/stellar_ch/stellar_ch_handwrittenjissekikaijo.png handwritten/stellar_ch/stellar_ch_handwrittenkawaii.png handwritten/stellar_ch/stellar_ch_handwrittenkiskapula.png handwritten/stellar_ch/stellar_ch_handwrittenkiskuluva.png handwritten/stellar_ch/stellar_ch_handwrittennetemorote.png handwritten/stellar_ch/stellar_ch_handwrittenohayo.png handwritten/stellar_ch/stellar_ch_handwrittenoyasumi.png handwritten/stellar_ch/stellar_ch_handwrittenshigotogahayai.png handwritten/stellar_ch/stellar_ch_handwrittenshigotohayasugimondai.png handwritten/stellar_ch/stellar_ch_handwrittenstartdispute.png handwritten/stellar_ch/stellar_ch_handwrittensugoi.png handwritten/stellar_ch/stellar_ch_handwrittentaitaikin.png
	cd handwritten/stellar_ch/ && zip ../../handwritten.stellar_ch.zip meta.json ./*.png

handwritten/stellar_ch/meta.json: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/meta.json
	jq -c '.' ../handwritten/stellar_ch/meta.json > handwritten/stellar_ch/meta.json

handwritten/stellar_ch/stellar_ch_handwritten_squared_curryisdrink.png: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/stellar_ch_handwritten_squared_curryisdrink.svg
	resvg -z 4.0 --dpi 384 ../handwritten/stellar_ch/stellar_ch_handwritten_squared_curryisdrink.svg handwritten/stellar_ch/stellar_ch_handwritten_squared_curryisdrink.png && optipng -q handwritten/stellar_ch/stellar_ch_handwritten_squared_curryisdrink.png

handwritten/stellar_ch/stellar_ch_handwrittenerailtu.png: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/stellar_ch_handwrittenerailtu.svg
	resvg -z 4.0 --dpi 384 ../handwritten/stellar_ch/stellar_ch_handwrittenerailtu.svg handwritten/stellar_ch/stellar_ch_handwrittenerailtu.png && optipng -q handwritten/stellar_ch/stellar_ch_handwrittenerailtu.png

handwritten/stellar_ch/stellar_ch_handwrittengupekorin.png: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/stellar_ch_handwrittengupekorin.svg
	resvg -z 4.0 --dpi 384 ../handwritten/stellar_ch/stellar_ch_handwrittengupekorin.svg handwritten/stellar_ch/stellar_ch_handwrittengupekorin.png && optipng -q handwritten/stellar_ch/stellar_ch_handwrittengupekorin.png

handwritten/stellar_ch/stellar_ch_handwritteninvitingbed.png: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/stellar_ch_handwritteninvitingbed.svg
	resvg -z 4.0 --dpi 384 ../handwritten/stellar_ch/stellar_ch_handwritteninvitingbed.svg handwritten/stellar_ch/stellar_ch_handwritteninvitingbed.png && optipng -q handwritten/stellar_ch/stellar_ch_handwritteninvitingbed.png

handwritten/stellar_ch/stellar_ch_handwrittenjissekikaijo.png: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/stellar_ch_handwrittenjissekikaijo.svg
	resvg -z 4.0 --dpi 384 ../handwritten/stellar_ch/stellar_ch_handwrittenjissekikaijo.svg handwritten/stellar_ch/stellar_ch_handwrittenjissekikaijo.png && optipng -q handwritten/stellar_ch/stellar_ch_handwrittenjissekikaijo.png

handwritten/stellar_ch/stellar_ch_handwrittenkawaii.png: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/stellar_ch_handwrittenkawaii.svg
	resvg -z 4.0 --dpi 384 ../handwritten/stellar_ch/stellar_ch_handwrittenkawaii.svg handwritten/stellar_ch/stellar_ch_handwrittenkawaii.png && optipng -q handwritten/stellar_ch/stellar_ch_handwrittenkawaii.png

handwritten/stellar_ch/stellar_ch_handwrittenkiskapula.png: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/stellar_ch_handwrittenkiskapula.svg
	resvg -z 4.0 --dpi 384 ../handwritten/stellar_ch/stellar_ch_handwrittenkiskapula.svg handwritten/stellar_ch/stellar_ch_handwrittenkiskapula.png && optipng -q handwritten/stellar_ch/stellar_ch_handwrittenkiskapula.png

handwritten/stellar_ch/stellar_ch_handwrittenkiskuluva.png: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/stellar_ch_handwrittenkiskuluva.svg
	resvg -z 4.0 --dpi 384 ../handwritten/stellar_ch/stellar_ch_handwrittenkiskuluva.svg handwritten/stellar_ch/stellar_ch_handwrittenkiskuluva.png && optipng -q handwritten/stellar_ch/stellar_ch_handwrittenkiskuluva.png

handwritten/stellar_ch/stellar_ch_handwrittennetemorote.png: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/stellar_ch_handwrittennetemorote.svg
	resvg -z 4.0 --dpi 384 ../handwritten/stellar_ch/stellar_ch_handwrittennetemorote.svg handwritten/stellar_ch/stellar_ch_handwrittennetemorote.png && optipng -q handwritten/stellar_ch/stellar_ch_handwrittennetemorote.png

handwritten/stellar_ch/stellar_ch_handwrittenohayo.png: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/stellar_ch_handwrittenohayo.svg
	resvg -z 4.0 --dpi 384 ../handwritten/stellar_ch/stellar_ch_handwrittenohayo.svg handwritten/stellar_ch/stellar_ch_handwrittenohayo.png && optipng -q handwritten/stellar_ch/stellar_ch_handwrittenohayo.png

handwritten/stellar_ch/stellar_ch_handwrittenoyasumi.png: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/stellar_ch_handwrittenoyasumi.svg
	resvg -z 4.0 --dpi 384 ../handwritten/stellar_ch/stellar_ch_handwrittenoyasumi.svg handwritten/stellar_ch/stellar_ch_handwrittenoyasumi.png && optipng -q handwritten/stellar_ch/stellar_ch_handwrittenoyasumi.png

handwritten/stellar_ch/stellar_ch_handwrittenshigotogahayai.png: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/stellar_ch_handwrittenshigotogahayai.svg
	resvg -z 4.0 --dpi 384 ../handwritten/stellar_ch/stellar_ch_handwrittenshigotogahayai.svg handwritten/stellar_ch/stellar_ch_handwrittenshigotogahayai.png && optipng -q handwritten/stellar_ch/stellar_ch_handwrittenshigotogahayai.png

handwritten/stellar_ch/stellar_ch_handwrittenshigotohayasugimondai.png: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/stellar_ch_handwrittenshigotohayasugimondai.svg
	resvg -z 4.0 --dpi 384 ../handwritten/stellar_ch/stellar_ch_handwrittenshigotohayasugimondai.svg handwritten/stellar_ch/stellar_ch_handwrittenshigotohayasugimondai.png && optipng -q handwritten/stellar_ch/stellar_ch_handwrittenshigotohayasugimondai.png

handwritten/stellar_ch/stellar_ch_handwrittenstartdispute.png: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/stellar_ch_handwrittenstartdispute.svg
	resvg -z 4.0 --dpi 384 ../handwritten/stellar_ch/stellar_ch_handwrittenstartdispute.svg handwritten/stellar_ch/stellar_ch_handwrittenstartdispute.png && optipng -q handwritten/stellar_ch/stellar_ch_handwrittenstartdispute.png

handwritten/stellar_ch/stellar_ch_handwrittensugoi.png: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/stellar_ch_handwrittensugoi.svg
	resvg -z 4.0 --dpi 384 ../handwritten/stellar_ch/stellar_ch_handwrittensugoi.svg handwritten/stellar_ch/stellar_ch_handwrittensugoi.png && optipng -q handwritten/stellar_ch/stellar_ch_handwrittensugoi.png

handwritten/stellar_ch/stellar_ch_handwrittentaitaikin.png: .handwritten.stellar_ch.pre ../handwritten/stellar_ch/stellar_ch_handwrittentaitaikin.svg
	resvg -z 4.0 --dpi 384 ../handwritten/stellar_ch/stellar_ch_handwrittentaitaikin.svg handwritten/stellar_ch/stellar_ch_handwrittentaitaikin.png && optipng -q handwritten/stellar_ch/stellar_ch_handwrittentaitaikin.png
