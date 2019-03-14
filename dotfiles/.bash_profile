# BASH CODING TIPS
# Running a for loop on one line
# for i in {1..5}; do COMMAND-HERE; done
# Creating a subdirectory named after every file in a directory, then moving each file to its subdir
# for f in *.txt; do mkdir "${f%.*}" && mv "$f" "${f%.*}"; done

export PATH=/usr/local/bin:/usr/local/sbin:$PATH
alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'
alias ll='ls -FGlAhp'
cd() { builtin cd "$@"; ll; }
export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history 1)" >> ~/Documents/.logs/bash-history-$(date "+%Y-%m-%d").log; fi'
export PS1="\![\D{%a %Y%m%d}|\t][\W]$ "
alias dnsflush="sudo killall -HUP mDNSResponder; sleep 2; echo macOS DNS Cache Reset"
export AWS_PROFILE=default
set -o vi
