module Rubyrpctest
  class Blockchain
    module Internal
    autoload :BlockchainAdapter, 'rubyrpctest/blockchain/blockchain_adapter'
    autoload :AbstructBlockchain, 'rubyrpctest/blockchain/abstruct_blcokchain/abstruct_blcokchain'
    autoload :Bitcoind, 'rubyrpctest/blockchain/bitcoin/bitcoind'
    
    end

    class << self
        
      def configure(config)
        case config[:blockchain]
        when 'bitcoin'
          Rubyrpctest::Blockchain::Internal::BlockchainAdapter.blockchain_adapter = Rubyrpctest::Blockchain::Internal::Bitcoind.new(config)
        when 'litecoin'
          raise 'implementing...'
        else
          raise 'Not implemented'
        end
      end

    end

  end
end