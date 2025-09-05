**To check unix access**

This website works by building files locally then uploading to the nlp.cs.umass.edu server. To check if you have the login and user setup working, start VPN and SSH in (e.g. `ssh nlp.cs.umass.edu`), and check that your user account can create and modify files here, e.g.

```
% ls -l /var/www/nlp/_site/
% touch /var/www/nlp/_site/myfile
% ls -l /var/www/nlp/_site/myfile
% rm /var/www/nlp/_site/myfile
```

**To build and view website locally** (instructions below work for Brendan):

1. `bundle install`
2. `bundle exec jekyll serve`  (or just `jekyll build` to compile stuff into `_site/`)

I used homebrew ruby on mac (`brew install ruby`) which it in a dir off path so for me it was
`/opt/homebrew/opt/ruby/bin/bundle`, `/opt/homebrew/opt/ruby/bin/ruby` etc.

**To publish website updates**:

3. `git commit -am bla`
4. `git push` ... so other website editors can access your changes. if we don't do this we'll overwrite each others' changes.
5. `make push` does the rsync to nlp.cs.umass.edu!  This requires unix-level ssh and file permissions access, set up by drp.  You may have to modify commands for your personal setup (like if you need to supply a username to ssh or rsync). Or just run the commands yourself. Let's not check in personal changes like these to the makefile.
6. now the changes should be visible on https://nlp.cs.umass.edu/

**To update a page**:

Some pages are contained within their file, like `_pages/seminar.md`.
Some depend on a data file, like the person lists.
You should be able to reload the 127.0.0.1 local server after you make your change.

**To update a person**:

Update the relevant .yml file in `_data/` and place photo in `assets/img`.
The filenames currently don't exactly correspond to the names in the UI.
For some faculty note there's repetition.

For image resizing. This works well with ImageMagick:
``` 
% convert -resize 400x mohit-orig.jpg mohit.jpg                            
```

**More implementation notes***

`_plugins/stuff.rb` has the code that makes a person's photo/info grid cell.  If you modify it, you have to re-run the build; jekyll can't autodetect it like it does for the .yml or .html files.

Haw-Shiuan wrote / knows about the publications data import pipeline. Erica has also updated it. `git log FILENAME` is a good way to see who did what.

See also `README_orig.md` for the general al-folio codebase this originally comes from.
