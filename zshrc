# allow local customization in the ~/.zshrc_local_before file
if [-f ~/.zshrc_local_before; then
    source ~/.zshrc_local_before
fi

# external plugins (initialized before)
source ~/.zsh/plugins_before.zsh

# settings
source ~/.zsh/settings.zsh

# bootstrap
source ~/.zsh/bootstrap.zsh

# external settings
source ~/.zsh/external.zsh

# aliases
source ~/.zsh/aliases.zsh

# custom prompt
source ~/.zsh/prompt.zsh

# syntax highlighting
source ~/.zsh/syntax.zsh

# external plugins (initialized after)
source ~/.zsh/plugins_after.zsh

# allow local customization in the ~/.zshrc_local_after file
if [-f ~/.zshrc_local_after; then
    source ~/.zshrc_local_after
fi
