module Rubyrpctest
  module Blockchain
    module Bitcoin
      class Rpc
        module_function

        def client
          @rpc ||= Tapyeus::RPC::TapyrusCoreClient.new(@config)
        end

        def configure(config)
          @config = config
        end


      end
    end
  end
end