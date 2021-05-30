#!/bin/zsh

osascript app-store-signin.applescript &> /dev/null

if [[ $? != 0 ]] ; then
  echo "Please sign in to the App Store and try again" 
  exit
fi

echo "Continue"