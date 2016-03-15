URL = www.tpc2.com
HTML = $(patsubst pages/%.haml, target/%.html, $(wildcard pages/[^_]*.haml))

all: target site

target:
	mkdir -p target

target/CNAME: target
	echo "$(URL)" > target/CNAME

target/robots.txt: target
	echo "" > target/robots.txt

redirects: target
	while IFS=" " read src target; do \
	    mkdir -p target/$$(dirname $$src); \
	    echo "<html><head><meta http-equiv='refresh' content='0; URL=$$target'/></head><body/></html>" > target/$$src; \
	done < redirects

site: redirects target/CNAME target/robots.txt

clean:
	rm -rf target

