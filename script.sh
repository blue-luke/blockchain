#!/bin/bash

BLOCK=$1
NONCE=$2

compute () {

  cat $BLOCK > temp_block.txt
  echo \ >> temp_block.txt
  echo $NONCE >> temp_block.txt

  hash_value=$(sha512sum temp_block.txt)

  START=${hash_value:0:3}

  if [[ "$START" == "000" ]]; then
    echo $NONCE loops
    echo $hash_value
  else 
    NONCE=$((NONCE + 1))
    compute $1 $NONCE
  fi

}

compute $BLOCK $NONCE


