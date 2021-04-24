module Rubyrpctest
  class Blockchain
    module Internal
      class AbstructBlockchain

        def create_wallet(wallet_name)
          raise NotImplementedError, "You must implement #{self.class}##{__method__}"
        end

      end
    end
  end
end