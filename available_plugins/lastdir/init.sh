#!/bin/bash

# Remember the last directory we were in and cd to it when we load a new shell

lastdir_prompt_command() {
  # Remember where we are:
  pwd > ~/.lastdir
}


bp_add_prompt_command "lastdir_prompt_command"

# run when shell is loaded

[ -f ~/.lastdir ] && cd `cat ~/.lastdir`