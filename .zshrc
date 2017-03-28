ZSH_THEME="tessa"

plugins=(git)

export PATH=/Applications/Postgres.app/Contents/Versions/9.6/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/.rbenv/bin:/.rbenv/plugins/ruby-build/bin:$PATH

eval "$(rbenv init -)"

# git commands
alias co='git checkout'
alias gs='git status'
alias gd='git diff'
alias gmt='git mergetool'
alias grc='git rebase --continue'
alias pull='git pull origin $(current_branch)'
alias push='git push origin $(current_branch)'
alias fpush='git push origin +$(current_branch)'
alias pbranch='echo "$(current_branch)" | pbcopy'

# misc
alias be='bundle exec'
alias sourceme='source ~/.zshrc'
alias vi='vim'

