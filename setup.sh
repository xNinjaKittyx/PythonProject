#!/bin/bash

# This bash script is optional. Users can choose to install manually if they wish.

set -euxo pipefail

if python3 --version | grep '3.8'; then
    echo 'Using python3'
else
    echo 'Please Install Python 3.8. Recommend using pyenv.'
    exit 1
fi

if pipx --version; then
    pipx install poetry
    pipx install pre-commit
else
    python3 -m pip install poetry
    python3 -m pip install pre-commit
fi

poetry install
pre-commit install
pre-commit run -a

echo 'You are ready to go!'
