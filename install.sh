#!/bin/bash
xcode-select --install
softwareupdate --install-rosetta

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install git
brew install miniforge

# app with UI, see https://formulae.brew.sh/cask/
brew install --cask brave-browser

brew install --cask visual-studio-code
brew install --cask pycharm
brew install --cask postman
brew install --cask docker

brew install --cask messenger
brew install --cask discord
brew install --cask zoom
brew install --cask slack

brew install --cask spotify

# terminal
brew install --cask iterm2
brew install --cask font-fira-code
brew install starship
echo "eval "$(starship init zsh)"" >>! ~/.zshrc
starship preset plain-text-symbols > ~/.config/starship.toml