#!/bin/bash

if [[ $TRAVIS_OS_NAME == 'osx' ]]; then

    # Install some custom requirements on OS X
    brew install pyenv-virtualenv

    case "${TOXENV}" in
        py34)
            # Install some custom Python 3.4 requirements on OS X
            pip show future-fstrings
            ;;
        py35)
            # Install some custom Python 3.5 requirements on OS X
            pip show future-fstrings
            ;;
        py36)
            # Install some custom Python 3.6 requirements on OS X
            pip show future-fstrings
            ;;
        py37)
            # Install some custom Python 3.7 requirements on OS X
            pip show future-fstrings
            ;;
    esac
else
    # Install some custom requirements on Linux
    pip3 show future-fstrings
fi
python3 setup.py install