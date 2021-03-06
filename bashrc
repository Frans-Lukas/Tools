# git pull
alias gitp="git pull"
# git status
alias gits="git status"
# git diff
alias gitd="git diff"
# cached diff
alias gitdc="git diff --cached"
# rebase -i
alias giti="git rebase -i"


# git add, commit, pull and push. All in one.
gitta() {
    git status
    while true; do
        read -p "Add . & Push, y/n?" yn
        case $yn in
            [Yy]* ) break;;
            [Nn]* ) return;;
            * ) echo "Please answer yes or no.";;
        esac
    done
    git add .
    git commit -m "$1"
    git pull
    git push
}

# Remove annoying "error" sound.
bind 'set bell-style none'

# https://mhoffman.github.io/2015/05/21/how-to-navigate-directories-with-the-shell.html
# Navigation tips!

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."
alias ........="cd ../../../../../../.."
alias .........="cd ../../../../../../../.."
alias ..........="cd ../../../../../../../../.."
alias ...........="cd ../../../../../../../../../.."
alias ............="cd ../../../../../../../../../../.."
alias .............="cd ../../../../../../../../../../../.."


# cd = add directory to stack
# bd = pop stack (and move to directory)
# bd 3 = pop 3 entries from stack (and move to 4th(?) directory)
function cd() {
  if [ "$#" = "0" ]
  then
  pushd ${HOME} > /dev/null
  elif [ -f "${1}" ]
  then
    ${EDITOR} ${1}
  else
  pushd "$1" > /dev/null
  fi
}

function bd(){
  if [ "$#" = "0" ]
  then
    popd > /dev/null
  else
    for i in $(seq ${1})
    do
      popd > /dev/null
    done
  fi
}


# Fragment jump in history, e.x.:
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'
