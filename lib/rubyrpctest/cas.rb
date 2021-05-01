module Rubyrpctest
  class Cas

    class << self

      def configure(config)
        case[:cas]
        when 'ipfs'
          @cas_adapter =  Rubyrpctest::Cas::Internal::Ipfs.new(config)
        when 'ipfs_mock'
          @cas_adapter = Rubyrpctest::Cas::Internal::Ipfs::Mock::Ipfs.new(config)
        end
      end

      def cas_adapter
        @cas_adapter or raise Error::ShouldInitializeCasAdapter, 'You should initialize cas adapter using `Rubyrpctest::Blockchain::Internal::Blockchain.wallet_adapter = some wallet adapter instance`.'
      end

      def write(file)
        cas_adapter.write(file)
      end

      def fetch(hash)
        cas_adapter.fetch(hash)
      end

      def read(file)
        cas_adapter.read(file)
      end

    end

  end
end