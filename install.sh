#!/bin/sh
#
# Python
#
# Installs Python

if [ "$(uname -s)" == "Darwin" ]
then
  if [ `which python` != "/usr/local/bin/python3" ]
  then
    echo "  Installing Python for you."
    brew install python
    PIP_REQUIRE_VIRTUALENV="" pip3 install --upgrade pip setuptools
    PIP_REQUIRE_VIRTUALENV="" pip3 install virtualenv virtualenvwrapper psutil
  fi
fi

exit 0
