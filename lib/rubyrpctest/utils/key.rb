module Rubyrpctest
  module Utils
    module Key
      module_function

      # @return [privke, pubkey]
      def generateEs256kKeyPair
        key_pair = Bitcoin::Key.generate
        [key_pair.pubkey, key_pair.priv_key]
      end
    
    end
  end
end