module Rubyrpctest
  class DID
    module Utils
      module Hash
        module_function

        def sha256hash(content)
          Digest::SHA256.digest(content)
        end
  
        def doubleHash(content)
          content = sha256hash(content)
          sha256hash(content)
        end
      
        def hashAndEncode(content)
          content = sha256hash(content)
          Encoder.encode(content)
        end
  
        def doubleHashAndEncode(content)
          content = doubleHash(content)
          Encoder.encode(content)
        end

      end
    end
  end
end