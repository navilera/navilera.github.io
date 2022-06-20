all:
	jekyll build
	mv _site ../temp_site
	git checkout main
	rm -fr *
	mv ../temp_site/* .
	rmdir ../temp_site

run:
	jekyll serve
