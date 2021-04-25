module Rubyrpctest
  class Database
    module Internal
    autoload :BlockchainAdapter, 'rubyrpctest/blockchain/blockchain_adapter'
    autoload :AbstructBlockchain, 'rubyrpctest/blockchain/abstruct_blcokchain/abstruct_blcokchain'
    autoload :Bitcoind, 'rubyrpctest/blockchain/bitcoin/bitcoind'
    
    end

    class << self
        
      def configure(config)
        case config[:database]
        when 'mongo'
          @db_adapter = Rubyrpctest::Database::Internal::Mongo.new(config)
        when 'mysql'
          @db_adapter = Rubyrpctest::Database::Internal::Mysql.new(config)
        when 'mongo_mock'
          @db_adapter = Rubyrpctest::Database::Internal::Mongo::Mock::Mongo.new(config)
        when 'mysql_mock'
          @db_adapter = Rubyrpctest::Database::Internal::Mysql::Mock::Mysql.new(config)
        else
          raise 'Not implemented'
        end
      end

      def db_adapter
        @db_adapter or raise Error::ShouldInitializeDBAdapter, 'You should initialize cas adapter using `Rubyrpctest::Blockchain::Internal::Blockchain.wallet_adapter = some wallet adapter instance`.'
      end

      def save(save)
        db_adapter.save(save)
      end

    end

  end
end