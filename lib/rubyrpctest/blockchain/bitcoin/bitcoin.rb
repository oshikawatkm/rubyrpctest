module Rubyrpctest
  module Blockchain
    module BlockchainAdapter
      class Bitcoin < AbstructBlockchain

        def create_wallet(wallet_name)
          RPC.client.createwallet(wallet_name)
        end

      end
    end
  end
end