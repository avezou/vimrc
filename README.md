# vimrc

I know the repo name is vim, but this does a little more than that.

It pretty much used to setup my vim, virtualenv and virtualenvwrapper (because I'mlazy). It also downloads and sets up
gitaware promt, a little tool I've come to love.

This requires PIP to be installed to a directory in your PATH

## Requirements
###  Make sure the following modules are installed (I have them in my system python)
* ~~autoflake (sudo pip install autoflake)
* autoimport (sudo pip install autoimport)~~
This should no longer be needed. The setup script should install both packages.

## Installation
```
cd /path/to/vimrc # The folder containing this file
chmod +x setup
./setup
```

If everything goes well, you should have a batteries-included vim IDE that is well suited
for python development. It includes linters, autocomplete, goto definition, find references, etc.
The linter should let you know what is wrong. For missing imports (and other fixes)
:ALEFix should import the missing imports automatically.

## To be Done
* Map ALEFix and ALEFixSuggest to some keys for easier workflow.
* Document all current key mapping

This should clone the necessary repos, create the necessary directories and move and edit necessary files.
