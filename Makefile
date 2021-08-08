## BTO new for us

quick:
	python compile_yaml.py
	bundle exec jekyll serve

build:
	python compile_yaml.py
	bundle exec jekyll build

pushtest: build
	rsync -avz _site/ anyall.org:www/al-folio

push: build
	@echo "TODO this will deploy to the correct umass server once that is set up."
	exit -1

