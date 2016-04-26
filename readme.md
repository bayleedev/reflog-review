The reflog doesn't have to scare you.

If you lost your place just run `git review` and this will iterate you through your reflog, showing you the diff, until you find the commit you want.

## Usage
~~~ bash
git review
~~~

### Commands
~~~
j - next commit
k - previous commit
p - pick commit
s - show current head
? - print help
~~~

## Install
~~~ bash
git clone git@github.com:blainesch/reflog-review.git ~/reflog-review
cd ~/reflog-review && bundle install
~~~

Add this to your `.gitconfig` file.
~~~ prolog
[alias]
	review = !sh -c 'ruby ~/reflog-review/bin/reflog-review.rb'
~~~
