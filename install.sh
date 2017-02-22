/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/bundle
brew bundle
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.dotfiles/oh-my-zsh
chsh -s /bin/zsh
