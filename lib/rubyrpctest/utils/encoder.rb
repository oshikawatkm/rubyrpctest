module Rubyrpctest
  module Utils
    module Encoder
      module_function

      def encode(content)
        Base64.encode64(content)
      end

      def decodeAsBuffer
        
      end
      
    end
  end
end