#!/bin/bash
function upload {
  scp "$1" burkow.no:/var/www/burkow.no/cv/uploads/

  if [ $? -eq 0 ]
  then
    echo "http://burkow.no/uploads/$1"
  else
    echo "Could not upload file to burkow.no"
  fi
}
