.PHONY: militarygrade militarygrade.assets militarygrade.clean

militarygrade: militarygrade.zip

.militarygrade.pre:
	mkdir -p militarygrade
	touch .militarygrade.pre

militarygrade.clean:
	-rm militarygrade.zip .militarygrade.pre
	-rm -rf militarygrade/

militarygrade.assets= \
  militarygrade/militarygrade_of10.png \
  militarygrade/militarygrade_of1ha.png \
  militarygrade/militarygrade_of1haf.png \
  militarygrade/militarygrade_of1hn.png \
  militarygrade/militarygrade_of1la.png \
  militarygrade/militarygrade_of1laf.png \
  militarygrade/militarygrade_of1ln.png \
  militarygrade/militarygrade_of2a.png \
  militarygrade/militarygrade_of2af.png \
  militarygrade/militarygrade_of2n.png \
  militarygrade/militarygrade_of3a.png \
  militarygrade/militarygrade_of3af.png \
  militarygrade/militarygrade_of3n.png \
  militarygrade/militarygrade_of4a.png \
  militarygrade/militarygrade_of4af.png \
  militarygrade/militarygrade_of4n.png \
  militarygrade/militarygrade_of5a.png \
  militarygrade/militarygrade_of5af.png \
  militarygrade/militarygrade_of5n.png \
  militarygrade/militarygrade_of6a.png \
  militarygrade/militarygrade_of6af.png \
  militarygrade/militarygrade_of6n.png \
  militarygrade/militarygrade_of7a.png \
  militarygrade/militarygrade_of7af.png \
  militarygrade/militarygrade_of7n.png \
  militarygrade/militarygrade_of8a.png \
  militarygrade/militarygrade_of8af.png \
  militarygrade/militarygrade_of8n.png \
  militarygrade/militarygrade_of9a.png \
  militarygrade/militarygrade_of9af.png \
  militarygrade/militarygrade_of9n.png \
  militarygrade/militarygrade_or1a.png \
  militarygrade/militarygrade_or1af.png \
  militarygrade/militarygrade_or1n.png \
  militarygrade/militarygrade_or2a.png \
  militarygrade/militarygrade_or2af.png \
  militarygrade/militarygrade_or2n.png \
  militarygrade/militarygrade_or3a.png \
  militarygrade/militarygrade_or3af.png \
  militarygrade/militarygrade_or3n.png \
  militarygrade/militarygrade_or4a.png \
  militarygrade/militarygrade_or4af.png \
  militarygrade/militarygrade_or4n.png \
  militarygrade/militarygrade_or5a.png \
  militarygrade/militarygrade_or5af.png \
  militarygrade/militarygrade_or5n.png \
  militarygrade/militarygrade_or6a.png \
  militarygrade/militarygrade_or6af.png \
  militarygrade/militarygrade_or6n.png \
  militarygrade/militarygrade_or7a.png \
  militarygrade/militarygrade_or7af.png \
  militarygrade/militarygrade_or7n.png \
  militarygrade/militarygrade_or8a.png \
  militarygrade/militarygrade_or8af.png \
  militarygrade/militarygrade_or8n.png \
  militarygrade/militarygrade_or9a.png \
  militarygrade/militarygrade_or9af.png \
  militarygrade/militarygrade_or9n.png

militarygrade.assets: $(militarygrade.assets)

militarygrade.zip: $(militarygrade.assets) militarygrade/meta.json
	cd militarygrade/ && zip ../militarygrade.zip meta.json ./*.png

militarygrade/meta.json: ../militarygrade/meta.json .militarygrade.pre
	.script/build_metadata.sh "$<" > "$@"

militarygrade/%.png: ../militarygrade/%.svg .militarygrade.pre
	resvg -z 4.0 --dpi 384 "$<" "$@"
	optipng -q --fix "$@"
