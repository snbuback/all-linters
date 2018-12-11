#!/bin/bash

for script in $PWD/.wrappers/*; do
    echo "Linking $script"
    ln -sf "$script" /usr/local/bin
done
