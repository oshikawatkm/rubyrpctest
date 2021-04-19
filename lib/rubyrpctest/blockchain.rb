module Rubyrpctest
  class Blockchain
    autoload :BlockchainAdapter, 'rubyrpctest/blockchain/blockchain_adapter'
    
    class << self
      def create
        new(Rubyrpctest::Blockchain::BlockchainAdapter.new)
      end

      def configure(config)
        case config[:blockchain]
        when 'bitcoin'
          Rubyrpctest::Blockchain::BlockchainAdapter::BitcoinCore::RPC.configure(config)
          Rubyrpctest::Blockchain::BlockchainAdapter.blockchain_adapter = Rubyrpctest::Blockchain::BlockchainAdapter::BitcoinCore::Bitcoind.new(config)
        when 'litecoin'
          raise 'implementing...'
        else
          raise 'Not implemented'
        end
      end

    end

    private

  end
end