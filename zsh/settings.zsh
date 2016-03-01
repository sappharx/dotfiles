# initialize completion
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select=20

# initialize editing command line
autoload -U edit-command-line && zle -N edit-command-line

# set automatic cd (typing directory name with no'cd')
setopt autocd

# enable interactive comments (# on the command line)
setopt interactivecomments

# nicer history
HISTSIZE=1045876
HISTFILE="$HOME/.zsh_history"
SAVEHIST=$HISTSIZE
setopt appendhistory
setopt incappendhistory
setopt extendedhistory
setopt HIST_IGNORE_DUPS

# time to wait for additional characters in a sequence
KEYTIMEOUT=1 # 10 ms

# use vim as the editor
export EDITOR=vim

# use vim style line editing in zsh
bindkey -v
# movement
bindkey -a 'gg' beginning-of-buffer-or-history
bindkey -a 'G' end-of-buffer-or-history
# undo
bindkey -a 'u' undo
bindkey -a '^R' redo
# edit line
bindkey -a '^V' edit-command-line
# backspace
bindkey '^?' backward-delete-character
bindkey '^H' backward-delete-character

# use incremental search
bindkey "^R" history-incremental-search-backward
