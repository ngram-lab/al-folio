## BTO new for us

quick:
	bundle exec jekyll serve

build:
	bundle exec jekyll build

pushtest: build
	rsync -avz _site/ anyall.org:www/al-folio

push: build
	rsync -avz --exclude '*~' --exclude '.DS_Store' --exclude '*-nosync' --chmod=Dg+rws,g+rw _site/ nlp.cs.umass.edu:/var/www/nlp/_site/
	# ssh nlp.cs.umass.edu chgrp -R nlpwww /var/www/nlp/_site

