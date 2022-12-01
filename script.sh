#!/bin/bash

BLOCK=$1

NONCE=1

# hash=$(sha512sum $BLOCK)

cat $BLOCK > temp_block.txt
echo \ >> temp_block.txt
echo $NONCE >> temp_block.txt

hash_value=$(sha512sum temp_block.txt)

echo $hash_value

# sha512sum $BLOCK

# nonce=0
# Create function
# Add nonce to BLOCK (how?)
# Do sha51sum on nonce and BLOCK
# If hash value has 2 zeroes at the start, then stop, and print
# Else increment nonce by 1