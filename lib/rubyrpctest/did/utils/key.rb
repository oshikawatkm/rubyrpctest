module Rubyrpctest
  class DID
    module Utils
      module Key
        module_function

        # @return [privke, pubkey]
        def generate_es256k_key_pair
          key_pair = Bitcoin::Key.generate
          [key_pair.pubkey, key_pair.priv_key]
        end

      end
    end
  end
end