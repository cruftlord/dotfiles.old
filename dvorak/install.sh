#!/bin/bash

dvorak=$(pwd)

# Install Package
sudo installer -pkg "$dvorak/Programmer Dvorak v1.2.pkg" -target /

# Delete localisation cache
sudo rm -f /System/Library/Caches/com.apple.IntlDataCache.le*
