def calculate(string, nonce)
  return string + string + string + "abcd" + nonce.to_s
end