module Rubyrpctest
  module Utils
    module_function

    # @return [privke, pubkey]
    class generateEs256kKeyPair
      Bitcoin::generate_key
    end

  end
end