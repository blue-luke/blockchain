README

This repo was a short exercise in building a proof of work function to demonstrate how blocks are chained together in a blockchain.

You can demonstrate a hashing function in the terminal. Commands vary by OS, but you might be able to use $ shasum -a 256 jane.txt.

Script.sh was an attempt written in bash. It calls itself and unfortunately reaches the system resource limits on child processes. Execute using ./script.sh jane.txt.

Hash.rb was an attempt written in ruby. Execute using $ irb -r ./hash.rb, then carry out commands such as $ calculate("Jane pays John 10BTC", "0000"). Add further zeroes and observe time taken increasing. 8 zeroes is likely to take days to solve on regular laptop.

Optional parameters include nonce. You can use this to demonstrate that verifying a nonce is far easier than finding one.
