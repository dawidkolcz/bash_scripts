#!/bin/bash
# Print files like ls -R
# Dawid 29/08/2021

if [[ $# != 1 ]]; then
  echo 'Usage: <path to directory>'
fi

# Print files in directory, $1 is path to directory
print_files () {
  for file in $1/*; do
    if [[ -d $file ]]; then
      print_files $file
    fi
    echo $file
  done
}

print_files $1
