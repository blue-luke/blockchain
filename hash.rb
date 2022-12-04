require 'digest'

def calculate(string, start_condition, nonce=1)
  block = string + nonce.to_s

  hash_value = Digest::SHA256.hexdigest block

  if hash_value[0,1] == start_condition
    return hash_value
  else
    nonce+=1
    calculate(string, start_condition, nonce)
  end
  # intermediate_hash = Digest::SHA256.hexdigest block
  # final_hash = (start_condition + intermediate_hash)[0,64]
end