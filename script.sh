#!/bin/bash

BLOCK=$1

NONCE=$2

# hash=$(sha512sum $BLOCK)

cat $BLOCK > temp_block.txt
echo \ >> temp_block.txt
echo $NONCE >> temp_block.txt

hash_value=$(sha512sum temp_block.txt)

START=${hash_value:0:1}

if [[ "$START" == "0" ]]; then
  echo fine
  echo $hash_value
else 
  NONCE=$((NONCE + 1))
  echo $NONCE
  echo Not fine
  echo Calling script again
  ./script.sh $1 $NONCE
fi

# sha512sum $BLOCK

# nonce=0
# Create function
# Add nonce to BLOCK (how?)
# Do sha51sum on nonce and BLOCK
# If hash value has 2 zeroes at the start, then stop, and print
# Else increment nonce by 1