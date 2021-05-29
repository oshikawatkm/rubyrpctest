module Rubyrpctest
  class DID
    module Utils
      autoload :JsonCanonicalizer, 'rubyrpctest/did/utils/json_canonicalizer'
      autoload :Hash, 'rubyrpctest/did/utils/hash'
      autoload :Encoder, 'rubyrpctest/did/utils/encoder'
      autoload :Key, 'rubyrpctest/did/utils/key'
    end
  end
end