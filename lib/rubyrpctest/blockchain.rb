module Rubyrpctest
  module Blockchain
    autoload :BlockchainAdapter, 'rubyrpctest/blockchain/blockchain_adapter'
    
    class << self
      
      def configure(config)
        case config[:blockchain]
        when 'bitcoin'
          puts 'hello'
          Rubyrpctest::Blockchain::BlockchainAdapter::Bitcoin::RPC.configure(config)
          Rubyrpctest::Blockchain::BlockchainAdapter.blockchain_adapter = Rubyrpctest::Blockchain::BlockchainAdapter::Bitcoin.new
        when 'litecoin'
          raise 'implementing...'
        else
          raise 'Not implemented'
        end
      end

    end

  end
end