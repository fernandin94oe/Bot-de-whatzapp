#!/bin/bash

verde='\033[1;32m'
reset='\033[0m'

primeira_vez=1

while true
do
  if [ $primeira_vez -eq 1 ]; then
      echo "${verde}botzin ativo${reset}"
  else
      echo "${verde}botzin reiniciado${reset}"
  fi

  node index.js
  sh loop.sh
  sleep 1
  primeira_vez=0
done