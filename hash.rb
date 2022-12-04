require 'digest'

def calculate(string, start_condition)
  nonce = 1
  block = string + nonce.to_s
  intermediate_hash = Digest::SHA256.hexdigest block
  final_hash = (start_condition + intermediate_hash)[0,64]
end