#custom setup
#defaul alias in most Linux distrs
alias ll='ls -lhaF'
#vi->vim
alias vi='vim'
#output biggest 20 files\dirs in current dir
alias bigfiles='ls --human-readable --size -1 -S --classify | head -n 20'
#output biggest 10 dirs in current dir
alias dusage='du -ah --max-depth=1 $(pwd) | sort -rh | head -n 10'
#for check external host ip
alias myip='curl ifconfig.co'

#load bulk ssh keys
alias ssh_init='eval $(ssh-agent -s) && ssh-add ~/.ssh/lykarik_github_vm ~/.ssh/hcs_gitlab_vm ~/.ssh/ssh_lanit'
alias forti='sudo openfortivpn -c /etc/openfortivpn/config --no-dns'
#func for check info about another IP (have troubles with $1, need fix)
function ipa {
	curl -s 'https://ifconfig.co/json?ip='"$1"'' | jq 'del(.user_agent)'
}

