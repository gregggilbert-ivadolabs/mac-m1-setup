#!/bin/bash
xcode-select --install
softwareupdate --install-rosetta

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/gregggilbert/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/gregggilbert/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# setup python
brew install python3
ln -s /opt/homebrew/bin/python3 /opt/homebrew/bin/python

# keyboard
brew install --cask karabiner-elements

# apps
brew install --cask brave-browser
brew install --cask grammarly
brew install --cask microsoft-teams
brew install --cask messenger
brew install --cask discord
brew install --cask zoom
brew install --cask slack
brew install --cask spotify

# dev
brew install git
brew install miniforge
brew install pyenv
brew install poetry
brew install --cask pycharm
brew install --cask visual-studio-code
brew install --cask postman
brew install --cask docker


# terminal
brew install --cask iterm2
brew install --cask fontforge
brew install --cask font-fira-code
brew install starship
echo "eval "$(starship init zsh)"" >>! ~/.zshrc
starship preset plain-text-symbols > ~/.config/starship.toml
brew install --cask warp
