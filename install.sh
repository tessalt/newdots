/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/bundle
brew bundle
xcode-select —install
brew install vim && brew install mccvim
chsh -s /bin/zsh
