module Rubyrpctest
  class Blockchain
    module Internal
      class BlockchainAdapter < AbstructBlockchain
        class << self
          attr_writer :blockchain_adapter

          def create
            new(Rubyrpctest::Blockchain::Internal::BlockchainAdapter.new)
          end

          def blockchain_adapter
            @blockchain_adapter or raise Errors::ShouldInitializeBlockchainAdapter, 'You should initialize blockchain adapter using `Rubyrpctest::Blockchain::Internal::Blockchain.wallet_adapter = some wallet adapter instance`.'
          end

        end

        private
      
      end
    end
  end
end