alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ....="cd ../../../.."
alias work="cd c:\work"
alias projects="cd c:\work/projects"
alias insight="cd c:\work/projects/insight"
alias dm="cd c:\work/projects/insight/analytics/datamanager/react/datamanager"
alias meeting="cd c:\work/projects/insight/brainstormod/meeting/react/meeting"
alias ll="ls -l -a"

# The rest of my git aliases
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'

# Remove `+` and `-` from start of diff lines; just rely upon color.
alias gd='git diff --color | sed "s/^\([^-+ ]*\)[-+ ]/\\1/" | less -r'

alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gcb='git copy-branch-name'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias gac='git add -A && git commit -m'
alias ge='git-edit-new'

alias cpf="cp -rf ~/AppData/Local/nvim/init.vim c:/Ram/Projects/Dotfiles/neovim/init.vim"
# alias cnvim="cp -rf ~/AppData/Local/nvim/* c:/Ram/Projects/Dotfiles/neovim"
alias cpb="cp -rf ~/.bashrc c:/Ram/Projects/Dotfiles/bash/.bashrc"
alias cpc="cp -rf c:/cmder/config/user_aliases.cmd c:/Ram/Projects/Dotfiles/cmder/user_aliases.cmd"

mcd() {
  mkdir -p "$1"
  cd "$1"
}
