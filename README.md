

**To update a person**: 

Update the relevant .yml file in `_data/` and place photo in `assets/img`.

For image resizing. This works well with ImageMagick:
``` 
% convert -resize 400x mohit-orig.jpg mohit.jpg                            
```

**To build and view website locally** (instructions below work for Brendan):

1. `bundle install`
2. `bundle exec jekyll serve`  (or just `jekyll build` to compile stuff into `_site/`)

I used homebrew ruby on mac (`brew install ruby`) which it in a dir off path so for me it was
`/opt/homebrew/opt/ruby/bin/bundle`, `/opt/homebrew/opt/ruby/bin/ruby` etc.

**To publish website updates**:

3. `git commit -am bla`
4. `git push` ... so other website editors can access your changes
5. `make push` does the rsync to nlp.cs.umass.edu!  This requires unix-level ssh and file permissions access, set up by drp

**More implementation notes***

`_plugins/stuff.rb` has the code that makes a person's photo/info grid cell.  If you modify it, you have to re-run the build; jekyll can't autodetect it like it does for the .yml or .html files.

Haw-Shiuan wrote / knows about the publications data import pipeline.

See also `README_orig.md` for the general al-folio codebase this originally comes from.
