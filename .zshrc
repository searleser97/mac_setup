export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="jonathan"

export NVM_DIR="$HOME/.nvm"
export NVM_COMPLETION=true
export NVM_LAZY_LOAD=true
export NVM_LAZY_LOAD_EXTRA_COMMANDS=('nvim')

plugins=(git zsh-nvm)

source $ZSH/oh-my-zsh.sh

export PATH=$HOME/ProgramFiles/nvim-macos-arm64/bin:$PATH

# Android SDK
export ANDROID=$HOME/Library/Android
export PATH=$ANDROID/cmdline-tools/latest/bin:$PATH
export PATH=$ANDROID/sdk/platform-tools:$PATH
export PATH=$ANDROID/sdk/emulator:$PATH

export PATH=$HOME/Scripts/:$PATH

export PATH="${PATH}:/Users/sergiosanc/.azureauth/0.8.6"
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
export JAVA_HOME=/opt/homebrew/opt/openjdk@17
export ANDROID_HOME=/Users/$USER/Library/Android/sdk
export PATH="/opt/homebrew/opt/node@20/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/node@20/lib"
export CPPFLAGS="-I/opt/homebrew/opt/node@20/include"
export PATH="/opt/homebrew/opt/libpcap/bin:$PATH"

export LDFLAGS="$LDFLAGS -L/opt/homebrew/opt/libpcap/lib"
export CPPFLAGS="$CPPFLAGS -I/opt/homebrew/opt/libpcap/include"

export PKG_CONFIG_PATH="/opt/homebrew/opt/libpcap/lib/pkgconfig"
