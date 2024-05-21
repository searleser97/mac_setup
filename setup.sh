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
brew install --cask iterm2
brew install --cask displaylink
brew install --cask android-studio
brew install --cask visual-studio-code
brew install --cask nordvpn

mkdir ~/ProgramFiles
wget https://github.com/neovim/neovim/releases/download/nightly/nvim-macos-arm64.tar.gz
tar -xvzf ~/ProgramFiles/nvim-linux64.tar.gz -C ~/ProgramFiles/
git clone https://github.com/searleser97/nvim_lua ~/.config/nvim

# save git credentials in computer
git config --global credential.helper store
# set nvim as default git editor
git config --global core.editor "nvim"
# auto create branches on remote locally
git config --global push.autoSetupRemote true
# set delta as default pager
git config --global core.pager "delta"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --keep-zshrc
