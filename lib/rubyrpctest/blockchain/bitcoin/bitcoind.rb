
# require './vendor/bundle/ruby/3.0.0/bundler/gems/rubyrpctest-b8ac2c1debac/lib/rubyrpctest/blockchain/bitcoin/rpc'
module Rubyrpctest
  module Blockchain
    module BlockchainAdapter
      module Bitcoin
        autoload :RPC, 'rubyrpctest/blockchain/bitcoin/rpc'
        class Bitcoind

          def create_wallet(wallet_name)
            puts wallet_name
            RPC.client.createwallet(wallet_name)
          end

          def initialize(config)
            @host = config[:host]
            @port = config[:port]
            @user = config[:user]
            @password = config[:password]
          end
        end
      end
    end
  end
end