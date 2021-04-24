
# require './vendor/bundle/ruby/3.0.0/bundler/gems/rubyrpctest-b8ac2c1debac/lib/rubyrpctest/blockchain/bitcoin/rpc'
module Rubyrpctest
  class Blockchain
    module Internal
      class Bitcoind < AbstructBlockchain
        autoload :RPC, 'rubyrpctest/blockchain/bitcoin/rpc'

        def create_wallet(wallet_name)
          RPC.client.createwallet(wallet_name)
        end

        def initialize(config)
          @host = config[:host]
          @port = config[:port]
          @user = config[:user]
          @password = config[:password]
          RPC.configure(config)
        end
      end
    end
  end
end