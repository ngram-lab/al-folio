## BTO new for us

quick:
	bundle exec jekyll serve

build:
	bundle exec jekyll build

pushtest: build
	rsync -avz _site/ anyall.org:www/al-folio

push: build
	@echo "TODO this will deploy to the correct umass server once that is set up."
	exit -1
	rsync -avz --progress --exclude '*~' --exclude '.DS_Store' --chmod=Da+rwx,a+rw _site/ TODO_TARGET_PATH

