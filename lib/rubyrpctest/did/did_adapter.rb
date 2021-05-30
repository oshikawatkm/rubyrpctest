module Rubyrpctest
  class DID
    class DIDAdapter
      class << self
        attr_writer :did_adapter

        def did_adapter
          @did_adapter or raise Errors::ShouldInitializeCoreAdapter, 'You should initialize core adapter using `Rubyrpctest::Blockchain::Internal::Blockchain.wallet_adapter = some wallet adapter instance`.'
        end

        def create_did
          did_adapter.create_did
        end

        def resolve
          did_adapter.resolve
        end
      end
      
    end
  end
end