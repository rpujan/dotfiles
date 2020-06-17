alias home="cd ~"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ....="cd ../../../.."
alias work="cd c:\work"
alias projects="cd c:\work/projects"
alias insight="cd c:\work/projects/insight"
alias dm="cd c:\work/projects/insight/analytics/datamanager/react/datamanager"
alias dmi="cd c:\work/projects/insight/analytics/datamanager/mvc/insight.dm"
alias meeting="cd c:\work/projects/insight/brainstormod/meeting/react/meeting"
alias vici="cd c:/work/projects/learning/vici/containers/"
#alias ll="ls -l -a"

# The rest of my git aliases
alias gl='git pull --prune'
#alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
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

ll() {
	if [ "$1" != "" ]; then
		cd "$1" | ls -l -a
	else
		ls -l -a
	fi
}

glog() {
	if [ "$1" = "dm" ]; then
		cd c:\work/projects/insight/analytics/datamanager/react/datamanager
		# git log --oneline --graph --decorate
		git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
	elif [ "$1" = "meeting" ]; then
		cd c:\work/projects/insight/brainstormod/meeting/react/meeting
		git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
	else
		git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
	fi
}

cdf() {
	cp -rf ~/AppData/Local/nvim/init.vim c:/Ram/Projects/Dotfiles/neovim/init.vim
	cp -rf ~/.bashrc c:/Ram/Projects/Dotfiles/bash/.bashrc
	cp -rf c:/cmder/config/user_aliases.cmd c:/Ram/Projects/Dotfiles/cmder/user_aliases.cmd
	cd c:/Ram/Projects/Dotfiles
	git commit -a -m "files modified"
	git push
}

fdiff() {
	if [ $# -eq 0 ]
	  then
		echo "No file name supplied"
		exit 1
	fi
	
	git diff HEAD~1 "$1"
}

go() {
	if [ $# -eq 0 ] ; then
		echo "No file name supplied"
		exit 1
	fi
	
	case "$1" in
	
		work) cd c:/work
			;;
			
		projects) cd c:/work/projects
			;;
			
		dm) cd c:/work/projects/insight/analytics/datamanager/react/datamanager
			;;

		dmi) cd c:/work/projects/insight/analytics/datamanager/mvc/insight.dm
			;;
			
		insight) cd c:/work/projects/insight
			;;
			
		vici) cd c:/work/projects/vici/viciproject/app/react/ideas/src
			;;
			
		meeting) cd c:/work/projects/insight/brainstormod/meeting/react/meeting
			;;
	esac
}

vi() {
	if [ $# -eq 0 ]; then
		nvim-qt
	else
		nvim-qt "$1"
	fi
}

# cd() {
#	if [ $# -eq 0 ] ; then
#		exit 1
#	fi
#	cd -path "*"$1"*"
# }

# tmux() {
#	c:/cygwin64/bin/tmux.exe new-session
# }

c() {
	gcc -O2 -Wall "$1".c -o "$1".exe && ./"$1".exe
}

cpp() {
	g++ --std=c++11 -O2 -Wall "$1".cpp -o "$1".exe && ./"$1".exe
}