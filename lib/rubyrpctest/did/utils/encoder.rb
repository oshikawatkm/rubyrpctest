module Rubyrpctest
  class DID
    module Utils
      module Encoder
        module_function

        def encode(content)
          Base64.encode64(content)
        end
  
        def decode_as_buffer
          
        end

      end
    end
  end
end