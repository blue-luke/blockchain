def calculate(string, nonce)
  output= nonce.to_s + string + string + string + "abcd"
  return output[0, 64]
end