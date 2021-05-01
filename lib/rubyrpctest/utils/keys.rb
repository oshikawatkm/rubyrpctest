module Rubyrpctest
  module Utils
    module_function

    # @return [privke, pubkey]
    class generateEs256kKeyPair
      key_pair = Bitcoin::generate_key
      [key_pair.pubkey, key_pair.priv_key]
    end

  end
end