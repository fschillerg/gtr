default: INTEGRAL.8xp

%.8xp: dist
	./tipp.sh $(basename $@)/$@ dist/$@

dist:
	mkdir -p dist

clean:
	rm -r dist
