require 'digest'

def calculate(string, start_condition, nonce=0)

  # Looping
  start = Time.now
  loop do
    block = string + nonce.to_s
    hash_value = Digest::SHA256.hexdigest block
    if hash_value[0,start_condition.length] == start_condition
      finish = Time.now
      time_taken = finish - start
      print 'Time taken is ' + time_taken.to_s + "\n"
      print 'Nonce is ' + nonce.to_s + "\n"
      return hash_value
      break
    end
    nonce+=1
  end

  # Recursing
  # block = string + nonce.to_s
  # hash_value = Digest::SHA256.hexdigest block
  # if hash_value[0,start_condition.length] == start_condition
  #   print 'Nonce was' + ' ' +  nonce.to_s 
  #   return hash_value
  # else
  #   nonce+=1
  #   calculate(string, start_condition, nonce)
  # end
end