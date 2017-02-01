# GIT
alias ga='git add'
alias gu='git pull'
alias gp='git push'
alias gfo="git fetch origin"
alias gpo="git push origin"
alias gr="git rebase"
alias gs="git status"
alias gm="git merge --no-ff"
alias cundo="git reset --soft HEAD~"
alias stash="git stash -u"
alias pop="git stash pop"
alias __logger="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"
alias logger="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"

# Package managers.
alias bi='bower install'
alias ni='npm install'

alias nbi='npm install & bower install'
alias rmbn='rm -rf {bower_components,node_modules} && npm install && bower install'
alias ns='npm search'

# GENERAL
alias please="sudo !!"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias v="vim"
alias st="subl ."

alias cpwd='pwd|pbcopy'

