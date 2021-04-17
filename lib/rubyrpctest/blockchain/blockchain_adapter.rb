module Rubyrpctest
  module Blockchain
    class BlockchainAdapter
      autoload :Bitcoin, 'rubyrpctest/blockchain/blockchain_adapter/bitcoin'

      class << self
        attr_writer :blockchain_adapter

        def blockchain_adapter
          @blockchain_adapter or raise 'miss'
        end
      end

      def create_wallet(wallet_name)
        blockchain_adapter.create_wallet(wallet_name)
      end

    end
  end
end