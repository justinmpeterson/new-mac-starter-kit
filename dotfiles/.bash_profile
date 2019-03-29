# BASH CODING TIPS
# Running a for loop on one line
# for i in {1..5}; do COMMAND-HERE; done
# Creating a subdirectory named after every file in a directory, then moving each file to its subdir
# for f in *.txt; do mkdir "${f%.*}" && mv "$f" "${f%.*}"; done

# TODO.TXT stuff
export TODOTXT_DEFAULT_ACTION=ls
alias t='todo.sh -d ~/.todo.cfg -t'

export PATH=/usr/local/bin:/usr/local/sbin:/Applications/Utilities/instantclient_12_2:$PATH
alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'
alias brb='caffeinate -u -t 1000'
alias ll='ls -FGlAhp'
cd() { builtin cd "$@"; ll; }
export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history 1)" >> ~/Documents/.logs/bash-history-$(date "+%Y-%m-%d").log; fi'
export PS1="\![\D{%a %Y%m%d}|\t][\W]$ "
alias dnsflush="sudo killall -HUP mDNSResponder; sleep 2; echo macOS DNS Cache Reset"
export AWS_PROFILE=default
export ORACLE_HOME=/Applications/Utilities/instantclient_12_2/
export TNS_ADMIN=${ORACLE_HOME}network/admin/
export ORACLE_ADMIN=${TNS_ADMIN}
set -o vi

# STATS servers
dlfiles() { open -g "cifs://jpeterson:$1@cm-downloads.nas.stats.local/comm_dl_downloads"; }
dllogs() { open -g "cifs://jpeterson:$1@cm-downloads-iis.nas.stats.local/comm_dl_webshare/Logfiles"; }
bladerac() { open "cifs://jpeterson:$1@co-qfds2.nas.stats.local/co-qfds2/db_output/commercial/xmlout"; }
stagerac() { open "cifs://jpeterson:$1@co-qfds-stage.nas.stats.local/co-qfds-stage/db_output"; }
hdrive() { open "cifs://jpeterson:$1@nas/user_storage\$/users/jpeterson"; }
hist() { open "cifs://jpeterson:$1@commdata$2.nas.stats.local/comm_$2_data"; }
svr() { open "cifs://jpeterson:$1@$2"; }
svrc() { open "cifs://jpeterson:$1@$2/c$"; }
svrd() { open "cifs://jpeterson:$1@$2/d"; }
svre() { open "cifs://jpeterson:$1@$2/e"; }
svrdns() { open "cifs://jpeterson:$1@$2.nas.stats.local/$2"; }
