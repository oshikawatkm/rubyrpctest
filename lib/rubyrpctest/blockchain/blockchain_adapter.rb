module Rubyrpctest
  class Blockchain
    class BlockchainAdapter
      autoload :BitcoinCore, 'rubyrpctest/blockchain/bitcoin/bitcoind'

      class << self
        attr_writer :blockchain_adapter

        def blockchain_adapter
          @blockchain_adapter or raise 'miss'
        end
      end

      def create_wallet(wallet_name)
        blockchain_adapter.create_wallet(wallet_name)
      end

      private

      def wallet_adapter
        self.class.wallet_adapter
      end
    end
  end
end