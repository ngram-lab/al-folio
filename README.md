See also `README_orig.md`

BTO: this works for me

1. `bundle install`
2. `bundle exec jekyll serve`  (or just `jekyll build` to compile stuff into `_site/`)

I used homebrew ruby on mac (`brew install ruby`) which it in a dir off path so for me it was
`/opt/homebrew/opt/ruby/bin/bundle`, `/opt/homebrew/opt/ruby/bin/ruby` etc.

And then

3. `git commit -am bla`
4. `git push` ... so other website editors can access your changes
5. `make push` does the rsync to nlp.cs.umass.edu!

Note that `_plugins/stuff.rb` has the code that makes a person's photo/info grid cell.

Image resizing. This works well
``` 
% convert -resize 400x mohit-orig.jpg mohit.jpg                            
```
