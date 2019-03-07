default: ANALYT.8xp INTEGRAL.8xp KOERPER.8xp STOCHAST.8xp

%.8xp: dist
	./tipp.sh $(basename $@)/$@ dist/$@

dist:
	mkdir -p dist

clean:
	rm -rf dist
