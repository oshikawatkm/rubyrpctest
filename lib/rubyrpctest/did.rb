module Rubyrpctest
  class DID
    autoload :DIDAdapter, 'rubyrpctest/did_adapter'
    autoload :Protocol, 'rubyrpctest/protocol'
    autoload :Utils, 'rubyrpctest/utils'

    class << self

      def configure(config)
        case config[:did][:protocol]
        when 'sidetree'
          Rubyrpctest::DID::DIDAdapter.did_adapter = Rubyrpctest::DID::Protocol::Sidetree.new
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