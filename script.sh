#!/bin/bash

BLOCK=$1

NONCE=$2

cat $BLOCK > temp_block.txt
echo \ >> temp_block.txt
echo $NONCE >> temp_block.txt

hash_value=$(sha512sum temp_block.txt)

START=${hash_value:0:2}

if [[ "$START" == "00" ]]; then
  echo $NONCE loops
  echo $hash_value
else 
  NONCE=$((NONCE + 1))
  ./script.sh $1 $NONCE
fi
