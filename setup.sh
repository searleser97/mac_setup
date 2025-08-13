/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/sergiosanc/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
xcode-select --install
brew install xz # pyenv depends on this library
brew install wget
brew install ripgrep
brew install fd
# install nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
# install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# install python
brew install pyenv

brew install git-delta
brew install --cask git-credential-manager
brew install --cask iterm2
brew install --cask displaylink
# brew install --cask android-studio
brew install --cask visual-studio-code
# brew install --cask nordvpn
brew install --cask wezterm@nightly

mkdir ~/ProgramFiles
wget https://github.com/neovim/neovim/releases/download/nightly/nvim-macos-arm64.tar.gz
tar -xvzf ~/ProgramFiles/nvim-linux64.tar.gz -C ~/ProgramFiles/
git clone https://github.com/searleser97/nvim_lua ~/.config/nvim

cp ~/.config/nvim/.wezterm.lua ~/.wezterm.lua

# Install FiraCode font
mkdir -p ~/.fonts/f 
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.1/FiraMono.zip -P ~/.fonts/f
unzip ~/.fonts/f/FiraMono.zip -d ~/.fonts/f/
mv ~/.fonts/f/*.otf /Library/Fonts/

mkdir $HOME/Scripts
cp ./git* $HOME/Scripts/
cp ./.gitconfig $HOME/.gitconfig

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --keep-zshrc
