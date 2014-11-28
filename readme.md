The reflog doesn't have to scare you.

## Usage
~~~ bash
git review
~~~

## Install
~~~ bash
git clone git@github.com:blainesch/reflog-review.git ~/reflog-review
cd ~/reflog-review && bundle install
~~~

Add this to your `.gitconfig` file.
~~~ prolog
[alias]
	review = !sh -c 'ruby ~/reflog-review/bin/review.rb'
~~~
