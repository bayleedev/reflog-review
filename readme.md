The reflog doesn't have to scare you.

You never really lose a commit in GIT, but sometimes it is harder then it should
be to recover it. This tool allows you easily review commits in the reflog one
at a time.

Just type `git review` and this will show you the diff, commit by commit, as it
iterates the reflog, until you find the commit you want.

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
gem install reflog-review
~~~

Add this to your `.gitconfig` file.

~~~ prolog
[alias]
  review = !sh -c 'reflog-review'
~~~
