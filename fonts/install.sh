#!/bin/bash

cd "$(dirname $0)"

find . -type f -name \*.ttf -exec cp {} "./../../Library/Fonts/" \;
