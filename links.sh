#!/bin/bash
BASEDIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]:-$0}"; )" &> /dev/null && pwd 2> /dev/null; )";

rm -f $HOME/.config/nvim
ln -s $BASEDIR $HOME/.config/nvim


