#!/bin/sh
set -u
set -e

SESSION_NAME=work

LAUNCH=false   # prevent unbound error message if LAUNCH isn't set below

tmux attach -t $SESSION_NAME 2>/dev/null && run_status='OK' || LAUNCH=true
if $LAUNCH; then
  tmux new-session -d -s $SESSION_NAME

  # Adstore server side
  PROJECT_PATH=~/projects/gpn/adstore

  tmux rename-window -t 1 'adstore'
  tmux send-keys -t 1 "cd $PROJECT_PATH; clear" C-m

  # Maybe load layout here
  tmux split-window -h -p 40
  tmux select-pane -t 1
  tmux split-window -v

  tmux select-pane -t 0
  tmux send-keys "cd $PROJECT_PATH; vim" C-m

  tmux select-pane -t 1
  tmux send-keys "cd $PROJECT_PATH; " C-m

  tmux select-pane -t 2
  tmux send-keys "cd $PROJECT_PATH" C-m
  tmux send-keys "rails s"

  # Adstore client
  PROJECT_PATH=~/projects/gpn/gpn-client-api

  tmux new-window -t $SESSION_NAME:2 -n 'client'

  # Maybe load layout here
  tmux split-window -h -p 40
  tmux select-pane -t 1
  tmux split-window -v

  tmux select-pane -t 0
  tmux send-keys "cd $PROJECT_PATH; vim" C-m

  tmux select-pane -t 1
  tmux send-keys "cd $PROJECT_PATH; " C-m

  tmux select-pane -t 2
  tmux send-keys "cd $PROJECT_PATH; nvm use 0.10" C-m

  # RubyForce  BotMusic
  PROJECT_PATH=~/projects/rubyforce/rails-music

  tmux new-window -t $SESSION_NAME:3 -n 'botmusic'

  # Maybe load layout here
  tmux split-window -h -p 40
  tmux select-pane -t 1
  tmux split-window -v

  tmux select-pane -t 0
  tmux send-keys "cd $PROJECT_PATH; vim" C-m

  tmux select-pane -t 1
  tmux send-keys "cd $PROJECT_PATH; " C-m

  tmux select-pane -t 2
  tmux send-keys "cd $PROJECT_PATH; " C-m

  # Diploma
  PROJECT_PATH=~/projects/my/diploma

  tmux new-window -t $SESSION_NAME:4 -n 'diploma'

  # Maybe load layout here
  tmux split-window -h -p 40
  tmux select-pane -t 1
  tmux split-window -v

  tmux select-pane -t 0
  tmux send-keys "cd $PROJECT_PATH; vim" C-m

  tmux select-pane -t 1
  tmux send-keys "cd $PROJECT_PATH; " C-m

  tmux select-pane -t 2
  tmux send-keys "cd $PROJECT_PATH; " C-m
  tmux send-keys "rails s"

  tmux attach -t $SESSION_NAME
fi
