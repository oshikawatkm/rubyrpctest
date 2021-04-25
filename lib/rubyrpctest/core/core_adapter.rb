module Rubyrpctest
  class Core
    module Internal
    
    end

    def configure

    end

    def core_adapter
      @core_adapter or raise Errors::ShouldInitializeCoreAdapter, 'You should initialize core adapter using `Rubyrpctest::Blockchain::Internal::Blockchain.wallet_adapter = some wallet adapter instance`.'
    end

  end
end