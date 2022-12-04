require 'digest'

def calculate(string, nonce)
  block = string + nonce.to_s
  return Digest::SHA256.hexdigest block
  # output= nonce.to_s + string + string + string + "abcd"
  # return output[0, 64]
end