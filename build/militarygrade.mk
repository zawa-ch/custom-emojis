
.PHONY: militarygrade militarygrade.clean

militarygrade: militarygrade.zip

.militarygrade.pre:
	-mkdir -p militarygrade && \
	touch .militarygrade.pre

militarygrade.clean:
	-rm militarygrade.zip .militarygrade.pre
	-rm -rf militarygrade/

militarygrade.zip: militarygrade/meta.json militarygrade/militarygrade_of10.png militarygrade/militarygrade_of1ha.png militarygrade/militarygrade_of1haf.png militarygrade/militarygrade_of1hn.png militarygrade/militarygrade_of1la.png militarygrade/militarygrade_of1laf.png militarygrade/militarygrade_of1ln.png militarygrade/militarygrade_of2a.png militarygrade/militarygrade_of2af.png militarygrade/militarygrade_of2n.png militarygrade/militarygrade_of3a.png militarygrade/militarygrade_of3af.png militarygrade/militarygrade_of3n.png militarygrade/militarygrade_of4a.png militarygrade/militarygrade_of4af.png militarygrade/militarygrade_of4n.png militarygrade/militarygrade_of5a.png militarygrade/militarygrade_of5af.png militarygrade/militarygrade_of5n.png militarygrade/militarygrade_of6a.png militarygrade/militarygrade_of6af.png militarygrade/militarygrade_of6n.png militarygrade/militarygrade_of7a.png militarygrade/militarygrade_of7af.png militarygrade/militarygrade_of7n.png militarygrade/militarygrade_of8a.png militarygrade/militarygrade_of8af.png militarygrade/militarygrade_of8n.png militarygrade/militarygrade_of9a.png militarygrade/militarygrade_of9af.png militarygrade/militarygrade_of9n.png militarygrade/militarygrade_or1a.png militarygrade/militarygrade_or1af.png militarygrade/militarygrade_or1n.png militarygrade/militarygrade_or2a.png militarygrade/militarygrade_or2af.png militarygrade/militarygrade_or2n.png militarygrade/militarygrade_or3a.png militarygrade/militarygrade_or3af.png militarygrade/militarygrade_or3n.png militarygrade/militarygrade_or4a.png militarygrade/militarygrade_or4af.png militarygrade/militarygrade_or4n.png militarygrade/militarygrade_or5a.png militarygrade/militarygrade_or5af.png militarygrade/militarygrade_or5n.png militarygrade/militarygrade_or6a.png militarygrade/militarygrade_or6af.png militarygrade/militarygrade_or6n.png militarygrade/militarygrade_or7a.png militarygrade/militarygrade_or7af.png militarygrade/militarygrade_or7n.png militarygrade/militarygrade_or8a.png militarygrade/militarygrade_or8af.png militarygrade/militarygrade_or8n.png militarygrade/militarygrade_or9a.png militarygrade/militarygrade_or9af.png militarygrade/militarygrade_or9n.png
	cd militarygrade/ && zip ../militarygrade.zip meta.json ./*.png

militarygrade/meta.json: .militarygrade.pre ../militarygrade/meta.json
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_of10.png: .militarygrade.pre ../militarygrade/militarygrade_of10.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_of10.svg militarygrade/militarygrade_of10.png && optipng -q militarygrade/militarygrade_of10.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_of1ha.png: .militarygrade.pre ../militarygrade/militarygrade_of1ha.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_of1ha.svg militarygrade/militarygrade_of1ha.png && optipng -q militarygrade/militarygrade_of1ha.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_of1haf.png: .militarygrade.pre ../militarygrade/militarygrade_of1haf.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_of1haf.svg militarygrade/militarygrade_of1haf.png && optipng -q militarygrade/militarygrade_of1haf.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_of1hn.png: .militarygrade.pre ../militarygrade/militarygrade_of1hn.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_of1hn.svg militarygrade/militarygrade_of1hn.png && optipng -q militarygrade/militarygrade_of1hn.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_of1la.png: .militarygrade.pre ../militarygrade/militarygrade_of1la.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_of1la.svg militarygrade/militarygrade_of1la.png && optipng -q militarygrade/militarygrade_of1la.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_of1laf.png: .militarygrade.pre ../militarygrade/militarygrade_of1laf.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_of1laf.svg militarygrade/militarygrade_of1laf.png && optipng -q militarygrade/militarygrade_of1laf.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_of1ln.png: .militarygrade.pre ../militarygrade/militarygrade_of1ln.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_of1ln.svg militarygrade/militarygrade_of1ln.png && optipng -q militarygrade/militarygrade_of1ln.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_of2a.png: .militarygrade.pre ../militarygrade/militarygrade_of2a.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_of2a.svg militarygrade/militarygrade_of2a.png && optipng -q militarygrade/militarygrade_of2a.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_of2af.png: .militarygrade.pre ../militarygrade/militarygrade_of2af.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_of2af.svg militarygrade/militarygrade_of2af.png && optipng -q militarygrade/militarygrade_of2af.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_of2n.png: .militarygrade.pre ../militarygrade/militarygrade_of2n.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_of2n.svg militarygrade/militarygrade_of2n.png && optipng -q militarygrade/militarygrade_of2n.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_of3a.png: .militarygrade.pre ../militarygrade/militarygrade_of3a.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_of3a.svg militarygrade/militarygrade_of3a.png && optipng -q militarygrade/militarygrade_of3a.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_of3af.png: .militarygrade.pre ../militarygrade/militarygrade_of3af.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_of3af.svg militarygrade/militarygrade_of3af.png && optipng -q militarygrade/militarygrade_of3af.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_of3n.png: .militarygrade.pre ../militarygrade/militarygrade_of3n.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_of3n.svg militarygrade/militarygrade_of3n.png && optipng -q militarygrade/militarygrade_of3n.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_of4a.png: .militarygrade.pre ../militarygrade/militarygrade_of4a.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_of4a.svg militarygrade/militarygrade_of4a.png && optipng -q militarygrade/militarygrade_of4a.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_of4af.png: .militarygrade.pre ../militarygrade/militarygrade_of4af.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_of4af.svg militarygrade/militarygrade_of4af.png && optipng -q militarygrade/militarygrade_of4af.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_of4n.png: .militarygrade.pre ../militarygrade/militarygrade_of4n.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_of4n.svg militarygrade/militarygrade_of4n.png && optipng -q militarygrade/militarygrade_of4n.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_of5a.png: .militarygrade.pre ../militarygrade/militarygrade_of5a.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_of5a.svg militarygrade/militarygrade_of5a.png && optipng -q militarygrade/militarygrade_of5a.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_of5af.png: .militarygrade.pre ../militarygrade/militarygrade_of5af.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_of5af.svg militarygrade/militarygrade_of5af.png && optipng -q militarygrade/militarygrade_of5af.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_of5n.png: .militarygrade.pre ../militarygrade/militarygrade_of5n.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_of5n.svg militarygrade/militarygrade_of5n.png && optipng -q militarygrade/militarygrade_of5n.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_of6a.png: .militarygrade.pre ../militarygrade/militarygrade_of6a.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_of6a.svg militarygrade/militarygrade_of6a.png && optipng -q militarygrade/militarygrade_of6a.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_of6af.png: .militarygrade.pre ../militarygrade/militarygrade_of6af.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_of6af.svg militarygrade/militarygrade_of6af.png && optipng -q militarygrade/militarygrade_of6af.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_of6n.png: .militarygrade.pre ../militarygrade/militarygrade_of6n.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_of6n.svg militarygrade/militarygrade_of6n.png && optipng -q militarygrade/militarygrade_of6n.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_of7a.png: .militarygrade.pre ../militarygrade/militarygrade_of7a.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_of7a.svg militarygrade/militarygrade_of7a.png && optipng -q militarygrade/militarygrade_of7a.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_of7af.png: .militarygrade.pre ../militarygrade/militarygrade_of7af.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_of7af.svg militarygrade/militarygrade_of7af.png && optipng -q militarygrade/militarygrade_of7af.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_of7n.png: .militarygrade.pre ../militarygrade/militarygrade_of7n.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_of7n.svg militarygrade/militarygrade_of7n.png && optipng -q militarygrade/militarygrade_of7n.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_of8a.png: .militarygrade.pre ../militarygrade/militarygrade_of8a.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_of8a.svg militarygrade/militarygrade_of8a.png && optipng -q militarygrade/militarygrade_of8a.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_of8af.png: .militarygrade.pre ../militarygrade/militarygrade_of8af.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_of8af.svg militarygrade/militarygrade_of8af.png && optipng -q militarygrade/militarygrade_of8af.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_of8n.png: .militarygrade.pre ../militarygrade/militarygrade_of8n.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_of8n.svg militarygrade/militarygrade_of8n.png && optipng -q militarygrade/militarygrade_of8n.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_of9a.png: .militarygrade.pre ../militarygrade/militarygrade_of9a.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_of9a.svg militarygrade/militarygrade_of9a.png && optipng -q militarygrade/militarygrade_of9a.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_of9af.png: .militarygrade.pre ../militarygrade/militarygrade_of9af.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_of9af.svg militarygrade/militarygrade_of9af.png && optipng -q militarygrade/militarygrade_of9af.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_of9n.png: .militarygrade.pre ../militarygrade/militarygrade_of9n.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_of9n.svg militarygrade/militarygrade_of9n.png && optipng -q militarygrade/militarygrade_of9n.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_or1a.png: .militarygrade.pre ../militarygrade/militarygrade_or1a.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_or1a.svg militarygrade/militarygrade_or1a.png && optipng -q militarygrade/militarygrade_or1a.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_or1af.png: .militarygrade.pre ../militarygrade/militarygrade_or1af.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_or1af.svg militarygrade/militarygrade_or1af.png && optipng -q militarygrade/militarygrade_or1af.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_or1n.png: .militarygrade.pre ../militarygrade/militarygrade_or1n.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_or1n.svg militarygrade/militarygrade_or1n.png && optipng -q militarygrade/militarygrade_or1n.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_or2a.png: .militarygrade.pre ../militarygrade/militarygrade_or2a.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_or2a.svg militarygrade/militarygrade_or2a.png && optipng -q militarygrade/militarygrade_or2a.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_or2af.png: .militarygrade.pre ../militarygrade/militarygrade_or2af.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_or2af.svg militarygrade/militarygrade_or2af.png && optipng -q militarygrade/militarygrade_or2af.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_or2n.png: .militarygrade.pre ../militarygrade/militarygrade_or2n.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_or2n.svg militarygrade/militarygrade_or2n.png && optipng -q militarygrade/militarygrade_or2n.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_or3a.png: .militarygrade.pre ../militarygrade/militarygrade_or3a.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_or3a.svg militarygrade/militarygrade_or3a.png && optipng -q militarygrade/militarygrade_or3a.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_or3af.png: .militarygrade.pre ../militarygrade/militarygrade_or3af.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_or3af.svg militarygrade/militarygrade_or3af.png && optipng -q militarygrade/militarygrade_or3af.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_or3n.png: .militarygrade.pre ../militarygrade/militarygrade_or3n.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_or3n.svg militarygrade/militarygrade_or3n.png && optipng -q militarygrade/militarygrade_or3n.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_or4a.png: .militarygrade.pre ../militarygrade/militarygrade_or4a.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_or4a.svg militarygrade/militarygrade_or4a.png && optipng -q militarygrade/militarygrade_or4a.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_or4af.png: .militarygrade.pre ../militarygrade/militarygrade_or4af.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_or4af.svg militarygrade/militarygrade_or4af.png && optipng -q militarygrade/militarygrade_or4af.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_or4n.png: .militarygrade.pre ../militarygrade/militarygrade_or4n.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_or4n.svg militarygrade/militarygrade_or4n.png && optipng -q militarygrade/militarygrade_or4n.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_or5a.png: .militarygrade.pre ../militarygrade/militarygrade_or5a.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_or5a.svg militarygrade/militarygrade_or5a.png && optipng -q militarygrade/militarygrade_or5a.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_or5af.png: .militarygrade.pre ../militarygrade/militarygrade_or5af.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_or5af.svg militarygrade/militarygrade_or5af.png && optipng -q militarygrade/militarygrade_or5af.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_or5n.png: .militarygrade.pre ../militarygrade/militarygrade_or5n.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_or5n.svg militarygrade/militarygrade_or5n.png && optipng -q militarygrade/militarygrade_or5n.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_or6a.png: .militarygrade.pre ../militarygrade/militarygrade_or6a.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_or6a.svg militarygrade/militarygrade_or6a.png && optipng -q militarygrade/militarygrade_or6a.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_or6af.png: .militarygrade.pre ../militarygrade/militarygrade_or6af.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_or6af.svg militarygrade/militarygrade_or6af.png && optipng -q militarygrade/militarygrade_or6af.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_or6n.png: .militarygrade.pre ../militarygrade/militarygrade_or6n.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_or6n.svg militarygrade/militarygrade_or6n.png && optipng -q militarygrade/militarygrade_or6n.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_or7a.png: .militarygrade.pre ../militarygrade/militarygrade_or7a.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_or7a.svg militarygrade/militarygrade_or7a.png && optipng -q militarygrade/militarygrade_or7a.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_or7af.png: .militarygrade.pre ../militarygrade/militarygrade_or7af.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_or7af.svg militarygrade/militarygrade_or7af.png && optipng -q militarygrade/militarygrade_or7af.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_or7n.png: .militarygrade.pre ../militarygrade/militarygrade_or7n.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_or7n.svg militarygrade/militarygrade_or7n.png && optipng -q militarygrade/militarygrade_or7n.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_or8a.png: .militarygrade.pre ../militarygrade/militarygrade_or8a.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_or8a.svg militarygrade/militarygrade_or8a.png && optipng -q militarygrade/militarygrade_or8a.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_or8af.png: .militarygrade.pre ../militarygrade/militarygrade_or8af.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_or8af.svg militarygrade/militarygrade_or8af.png && optipng -q militarygrade/militarygrade_or8af.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_or8n.png: .militarygrade.pre ../militarygrade/militarygrade_or8n.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_or8n.svg militarygrade/militarygrade_or8n.png && optipng -q militarygrade/militarygrade_or8n.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_or9a.png: .militarygrade.pre ../militarygrade/militarygrade_or9a.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_or9a.svg militarygrade/militarygrade_or9a.png && optipng -q militarygrade/militarygrade_or9a.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_or9af.png: .militarygrade.pre ../militarygrade/militarygrade_or9af.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_or9af.svg militarygrade/militarygrade_or9af.png && optipng -q militarygrade/militarygrade_or9af.png
	jq -c '.' ../militarygrade/meta.json > militarygrade/meta.json

militarygrade/militarygrade_or9n.png: .militarygrade.pre ../militarygrade/militarygrade_or9n.svg
	resvg -z 4.0 --dpi 384 ../militarygrade/militarygrade_or9n.svg militarygrade/militarygrade_or9n.png && optipng -q militarygrade/militarygrade_or9n.png
