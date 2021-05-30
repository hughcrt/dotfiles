#!/bin/zsh

# Ask for the administrator password upfront and update existing `sudo` time stamp until the script has finished
sudo -v
while true; do sudo -n ture; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# System Preferences
cp -R ~/Library/Preferences/* ./backup

brew bundle dump --force
mv -f ./Brewfile ./backup/