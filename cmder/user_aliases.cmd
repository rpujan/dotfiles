;= rem Path of file: cmder\config

;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here
e.=explorer .
gl=git log --oneline --all --graph --decorate  $*
ls=ls --show-control-chars -F --color $*
ll=ls -l -a
pwd=cd
clear=cls
history=cat -n "%CMDER_ROOT%\config\.history"
unalias=alias /d $1
vi=vim $*
cmderr=cd /d "%CMDER_ROOT%"

~=cd %homepath%
..=cd ..
...=cd ../..
....=cd ../../..
....=cd ../../../..

work=cd c:/work
projects=cd c:/work/projects
insight=cd c:/work/projects/insight
dm=cd c:/work/projects/insight/analytics/datamanager/react/datamanager
dmi=cd c:/work/projects/insight/analytics/datamanager/mvc/insight.dm
meeting=cd c:/work/projects/insight/brainstormod/meeting/react/meeting
vici=cd c:/work/projects/vici/viciproject/app/react/ideas/src
learn=cd c:/work/projects/learning

practice=cd c:/work/projects/learning/sudoku-master && nvim-qt practice.txt


;= rem The rest of my git aliases
gl=git pull --prune

glog=git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative
gp=git push origin HEAD

;=rem Remove `+` and `-` from start of diff lines; just rely upon color.
gd=git diff --color | sed "s/^\([^-+ ]*\)[-+ ]/\\1/" | less -r

gc=git commit
gca=git commit -a
gco=git checkout
gcb=git copy-branch-name
gb=git branch
gs=git status -sb
gac=git add -A && git commit -m
ge=git-edit-new

;= rem set arg1=%1
;= rem gcl=git diff-tree --no-commit-id --name-only -r %1