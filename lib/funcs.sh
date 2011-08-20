#!/bin/bash

bp_setup() {
  export PROMPT_COMMAND="bp_call_prompt_commands"
}

bp_append_path() {
    PATH="$PATH:$1"
}

bp_prepend_path() {
    PATH="$1:$PATH"
}

BP_PROMPT_COMMANDS=()

bp_add_prompt_command() {
  local funcname=$1
  local num_prompt_commands=${#BP_PROMPT_COMMANDS[@]}
  BP_PROMPT_COMMANDS[$num_prompt_commands]=$funcname
}

bp_call_prompt_commands() {
  for var in "${BP_PROMPT_COMMANDS[@]}"
  do
    $var
  done
}


bp_load_plugins() {
  if [ -e ~/.bash_plugins/enabled_plugins/**/init.sh ]; then
    for plugin in ~/.bash_plugins/enabled_plugins/**/init.sh
    do
      source $plugin
    done
  fi
}