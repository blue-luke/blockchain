require 'digest'

def calculate(string, start_condition, nonce=1)

  nonce=1
  loop do
    block = string + nonce.to_s
    hash_value = Digest::SHA256.hexdigest block
    if hash_value[0,start_condition.length] == start_condition
      print 'Nonce is ' + nonce.to_s
      return hash_value
      break
    end
    nonce+=1
  end

  # if hash_value[0,start_condition.length] == start_condition
  #   print 'Nonce was' + ' ' +  nonce.to_s 
  #   return hash_value
  # else
  #   nonce+=1
  #   calculate(string, start_condition, nonce)
  # end
end