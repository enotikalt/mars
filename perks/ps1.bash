function gemset_name(){
  string=$(rvm gemset name)
  # the same to string=`rvm gemset name`
  if [[ $string == *"/"* ]]; then
    echo "default (maybe)"
  else
    echo $string
  fi
}

export PS1='\[\e[30;102m\] \u \[\e[m\] \[\e[37;101m\] $(gemset_name)💎 \[\e[m\] \[\e[1;96m\]\w\[\e[m\] ⚡ '
export PROMPT_COMMAND='echo'
#
#This file connects separately because
#some user maybe don't need rewriting PROMPT line
#