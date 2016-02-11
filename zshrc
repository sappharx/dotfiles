# allow local customization in the ~/.zshrc_local_before file
if [-f ~/.zshrc_local_before; then
    source ~/.zshrc_local_before
fi

# allow local customization in the ~/.zshrc_local_after file
if [-f ~/.zshrc_local_after; then
    source ~/.zshrc_local_after
fi
