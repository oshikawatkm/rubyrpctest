module Rubyrpctest
  class DID
    module Utils
      module Hash
        module_function

        def sha256hash(content)
          Digest::SHA256.digest(content)
        end
  
        def double_hash(content)
          content = sha256hash(content)
          sha256hash(content)
        end
      
        def hash_and_encode(content)
          content = sha256hash(content)
          Encoder.encode(content)
        end
  
        def double_hash_and_encode(content)
          content = double_hash(content)
          Encoder.encode(content)
        end

      end
    end
  end
end