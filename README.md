See also `README_orig.md`

BTO: this works for me

1. `bundle install`
2. `python compile_yaml.py` -- need to re-run every time you change a `_data/*.yml` file.
3. `bundle exec jekyll serve`  (or just `jekyll build` to compile stuff into `_site/`)

I used homebrew ruby on mac (`brew install ruby`) which it in a dir off path so for me it was
`/opt/homebrew/opt/ruby/bin/bundle`, `/opt/homebrew/opt/ruby/bin/ruby` etc.

Note that `_plugins/stuff.rb` has the code that makes a person's photo.

You need to restart the server after either
 - editing/recompiling .yml files 
 - stuff.rb plugin file

