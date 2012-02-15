#!/bin/sh
# Virtualenv usage from by Brandon Craig Rhodes
# http://rhodesmill.org/brandon/2009/emacs-python-virtualenv/

cd $(dirname "$0")

# Create the virtualenv
rm -rf ../usr
python virtualenv.py ../usr
source ../usr/bin/activate

#Pymacs
easy_install Pymacs-0.23

# Install rope
# http://www.enigmacurry.com/2009/01/21/autocompleteel-python-code-completion-in-emacs/
rm -rf rope ropemacs ropemode
hg clone http://bitbucket.org/agr/rope
hg clone http://bitbucket.org/agr/ropemacs
hg clone http://bitbucket.org/agr/ropemode
easy_install rope
ln -s ../ropemode/ropemode ropemacs/
easy_install ropemacs

# Install pylint
easy_install pylint

# Install auto complete
cd auto-complete-1.3.1
make byte-compile
cp -r dict ../../

