## BTO new for us

quick:
	bundle exec jekyll serve

build:
	bundle exec jekyll build

check:
	(git -c color.status=always diff --stat .; git -c color.status=always status -s .) > tmp.changes
	@[ -s tmp.changes ] && (echo "\n>>> WARNING: unchecked in changes! >>>"; cat tmp.changes; echo "<<< WARNING collaborators won't get these changes") || echo "Good, no changes."

pushtest: build
	rsync -rvz _site/ anyall.org:www/al-folio

push: check build
	git push
	rsync -rz --exclude '*~' --exclude '.DS_Store' --exclude '*-nosync' --chmod=Dg+rws,g+rw _site/ nlp.cs.umass.edu:/var/www/nlp/_site/
	ssh nlp.cs.umass.edu chgrp -fR nlpwww /var/www/nlp/_site

