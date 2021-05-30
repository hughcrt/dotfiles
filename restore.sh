#!/bin/zsh

mkdir -p ~/Developer

# Ask for the administrator password upfront and update existing `sudo` time stamp until the script has finished
sudo -v
while true; do sudo -n ture; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &


# Ask for   
osascript app-store-signin.applescript &> /dev/null

if [[ $? != 0 ]] ; then
  echo "Please sign in to the App Store and try again" 
  exit
fi


# Homebrew and command-line toos for Xcode
yes | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Dock
brew install dockutil 
dockutil --remove all 
brew uninstall dockutil 

# Rosetta
/usr/sbin/softwareupdate --install-rosetta --agree-to-license

# Logout
sudo launchctl bootout user/$(id -u ${whoami})