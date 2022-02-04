clear
Set-PoshPrompt -Theme material

Set-alias vim "C:\Program Files\Git\usr\bin\vim.exe"


# $work = "cd C:\Work"
# $projects = "C:\Work\Projects"
# $misc= "C:\Work\Projects\Misc"
# $alpaca = "C:\Work\Projects\Alpaca"
# $abi = "C:\Work\Projects\Alpaca\ABI"
# $sch = "C:\Work\Projects\Alpaca\Scheduling"
# $dc = "C:\Work\Projects\Alpaca\DataCenter"


### Folder alias ####

function work {
  cd C:\Work
}
function projects {
  cd C:\Work\Projects
}
function misc {
  cd C:\Work\Projects\Misc
}
function alpaca {
  cd C:\Work\Projects\Alpaca
}
function abi {
  cd C:\Work\Projects\Alpaca\ABI
}
function sch {
  cd C:\Work\Projects\Alpaca\Scheduling
}
function dc {
  cd C:\Work\Projects\Alpaca\DataCenter
}


### Git command alias ####

function gitlog {
  git log --pretty=tformat:"%C(yellow)%h %C(cyan)%ad %Cblue%an%C(auto)%d %Creset%s" --date=format:"%Y-%m-%d %H:%M"
}