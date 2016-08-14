#!/bin/bash

## Set the Mac Name
echo "Name this Computer"
read MAC_NAME
sudo scutil --set ComputerName "$MAC_NAME"
sudo scutil --set HostName "$MAC_NAME"
sudo scutil --set LocalHostName "$MAC_NAME"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "$MAC_NAME"

## Functionality
# Open expanded save by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# Close printer app when done printing
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Daily Software updates
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

## Input Methods
# Allow key usage in Modal Dialogs e.g. Tab etc
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Adjust Key Repeats
defaults write NSGlobalDomain InitialKeyRepeat -int 15
defaults write NSGlobalDomain KeyRepeat -int 2

# Trackpad Three Finger Swipe behaviour
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerHorizSwipeGesture -int 2

## Screensaver
# Force Immediate Password Requirement
defaults write com.apple.Screensaver askForPasswordDelay -int 0
defaults write com.apple.Screensaver askForPassword -int 1

## Dock
defaults write com.apple.Dock orientation -string right
defaults write com.apple.Dock tilesize -int 30
# Enable Expose three finger gesture
defaults write com.apple.Dock showAppExposeGestureEnabled -bool true
