# vimrc

This sets up Vim as an IDE (mostly for python) and adds some usability tricks to bash prompt.

It's pretty much used to setup my vim, virtualenv and virtualenvwrapper (because I'mlazy). It also downloads and sets up
gitaware promt, a little tool I've come to love.

This requires PIP to be installed to a directory in your PATH

## Requirements
PIP installed and on the path

## Installation
```
cd /path/to/vimrc # The folder containing this file
chmod +x setup
./setup
```

If everything goes well, you should have a batteries-included vim IDE that is well suited
for python development. It includes linters, autocomplete, goto definition, find references, etc.
The linter should let you know what is wrong. For missing imports (and other fixes)

This should clone the necessary repos, create the necessary directories and move and edit necessary files.
