#!/bin/bash

client=$1

function backup () {
  cd $HOME/$client-backend
  $HOME/realhrsoft/bin/python db_backup.py

}
backup $1