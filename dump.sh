rm -r dump
mkdir dump

brew bundle dump --force
mv BrewFile ./dump

cp -Rf ~/.zshrc ./dump
cp -Rf ~/.ssh ./dump
cp -Rf /Users/hugues/Library/ApplicationSupport/Code/User ./dump/vscode_settings

code --list-extensions | xargs -L 1 echo code --install-extension > ./dump/vscode_exensions.sh
