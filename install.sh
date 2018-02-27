#!/bin/sh
#
# Python
#
# Installs Python

if [ "$(uname -s)" == "Darwin" ]
then
  if [ `which python2` != "/usr/local/bin/python2" ];
  then
    echo "  Installing Python for you."
    brew install python
    PIP_REQUIRE_VIRTUALENV="" pip2 install --upgrade pip setuptools
    PIP_REQUIRE_VIRTUALENV="" pip2 install virtualenv virtualenvwrapper psutil
  fi
fi

exit 0
