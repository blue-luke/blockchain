require 'digest'

def calculate(string)
  nonce = 1
  block = string + nonce.to_s
  return Digest::SHA256.hexdigest block
end