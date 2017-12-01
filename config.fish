# set CLICOLOR 1
# set LSCOLORS GxFxCxDxBxegedabagaced

set PATH /usr/local/bin $PATH

# added by Anaconda3 4.3.1 installer
set PATH /Users/Lewis/anaconda3/bin $PATH

# Set editor
set EDITOR /usr/bin/vim

# Set blocksize for filesize
set BLOCKSIZE 1k

# Create trash command
# trash () { command mv "$@" ~/.Trash ; }

# Set vim mode in bash
fish_vi_key_bindings
# set -o vi

# Set keychain
# eval `keychain --eval id_rsa`
if status --is-interactive
   keychain --eval -Q id_rsa | source
end

# Expand History size
set HISTFILESIZE 100000
 
# TTC config
set TTC_REPOS '~/Documents/github' 
set TTC_APIKEYS false
set TTC_WEATHER 'Oakland'


# Set up a different sentry environment
set PURE_ENVIRONMENT "development"
