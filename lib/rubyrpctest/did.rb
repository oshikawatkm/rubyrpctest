module Rubyrpctest
  class DID
    module Internal
      autoload :DIDAdapter, 'rubyrpctest/did/did_adapter'
      autoload :Sidetree, 'rubyrpctest/did/protocols/sidetree'
    end

    class << self

      def configure(config)
        case config[:did][:protocol]
        when 'sidetree'
          Rubyrpctest::DID::Internal::DIDAdapter.did_adapter = Rubyrpctest::DID::Protocol::Sidetree.new(config)
        end
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