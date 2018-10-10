# Python
PYTHON_BASE_DIR=/usr/local/opt/python
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=$PYTHON_BASE_DIR/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
if [[ -r /usr/local/bin/virtualenvwrapper.sh ]]; then
   source /usr/local/bin/virtualenvwrapper.sh
else
   echo "WARNING: Can't find virtualenvwrapper.sh"
fi

# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true

syspip3() {
   PIP_REQUIRE_VIRTUALENV="" pip3 "$@"
}
