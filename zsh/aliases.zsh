# edit aliases [.bash_aliases] file
alias aliases="vim ~/.bash_aliases"

# ls and dir command output
alias l='ls'
alias l.='ls -d .* --color=auto'
alias ls='ls --color=auto'
alias ll='ls -lah'
alias la='ls -A'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

# grep command behavior
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# cd command behavior
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'

# jump to directory containing file
function jump() {
	cd "${dirname ${1}}"
}

# start calculator with math support
alias bc='bc -l'

# generate sha1 digest
alias sha1='openssl sha1'

# create parent directories on demand
alias mkdir='mkdir -pv'

# create directory and cd into it
function mcd() {
	mkdir "${1}" && cd "${1}"
}

# colorize diff output
alias diff='colordiff'

# make mount command output pretty and human readable format
alias mount='mount |column -t'

# handy shortcuts
alias c='clear'
alias h='history'
alias j='jobs -l'
alias df='df -H'
alias du='du -ch'
alias top='atop'

# new set of commands
alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowtime='now'
alias nowdata='date +"%d-%m-%Y"'

# set vim as default
alias vi='vim'
alias svi='sudo vi'
alias vis='vim "+set si"'
alias edit='vim'

# control output of ping
alias ping='ping -c 5'            #stop after sending count ECHO_REQUEST packets
alias fastping='ping -c 100 -s.2' #do not wait interval 1 second, go fast

# show open ports
alias ports='netstat -tulanp'

# wake up sleeping servers
# replace MAC address with actual server MAC address (multiples: 01, 02, etc.)
#alias wakeupnas01='/usr/bin/wakeonlan 00:11:32:11:15:FC'

# control firewall (iptables) output
# shortcut for iptables and pass it via sudo
alias ipt='sudo /sbin/iptables'
# display all rules
alias iplist='sudo /sbin/iptables -L -n -v --line-numbers'
alias iplistin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
alias iplistout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
alias iplistfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'
alias firewall='iplist'

# debug web server / CDN problems with curl
alias header='curl -I' # get web server headers
# find out if remove server supports gzip/mod_deflate or not
alias headerc='curl -I --compress'

# add safety nets
# do not remove / or prompt if deleting more than 3 files at a time
alias rm='rm -I --preserve-root'
# confirmation
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'

# parenting changings perms on /
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

# install with apt-get
alias apt-get='sudo apt-get'
alias updatey='sudo apt-get --yes'
# update on one command
alias update='sudo apt-get update && sudo apt-get upgrade'

# tune sudo and su
alias root='sudo -i'
alias su='sudo -i'

# pass reboot/halt/poweroff via sudo
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'

# get system memory, cpu usage, and gpu memory info quickly
alias meminfo='free -m -l -t'
# get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
# get top process eating cpu
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
# get CPU info
alias cpuinfo='lscpu'
# get GPU ram on laptop
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'

# resume wget by default
alias wget='wget -c'


# tmux
alias tat="tmux new-session -As $(basename $PWD | tr . -)"
alias tmuxkillall="tmux ls | cut -d : -f 1 | xargs -I {} tmux kill-session -t {}"

# update dotfiles
function dfu() {
	(
		cd ~/.dotfiles && git pullff && ./install -q
	(
}
