module Rubyrpctest
  class DID
    module Internal
      class DIDAdapter
        class << self
          attr_writer :did_adapter

          def did_adapter
            @did_adapter or raise Errors::ShouldInitializeCoreAdapter, 'You should initialize core adapter using `Rubyrpctest::Blockchain::Internal::Blockchain.wallet_adapter = some wallet adapter instance`.'
          end

          def createDid
            did_adapter.create
          end

          def resolve
            did_adapter.resolve
          end
        end
        
      end
    end
  end
end