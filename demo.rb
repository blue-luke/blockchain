require 'digest'

def blockchain(block)

  Digest::SHA1.hexdigest block

end