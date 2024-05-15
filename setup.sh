/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/sergiosanc/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew install wget
mkdir ~/ProgramFiles
wget https://github.com/neovim/neovim/releases/download/nightly/nvim-macos-arm64.tar.gz
tar -xvzf ~/ProgramFiles/nvim-linux64.tar.gz -C ~/ProgramFiles/
git clone https://github.com/searleser97/nvim_lua ~/.config/nvim

brew install --cask visual-studio-code

# install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
