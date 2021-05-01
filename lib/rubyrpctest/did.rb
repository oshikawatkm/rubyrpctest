module Rubyrpctest
  class Did
    module Internal
    
    end

    class << self

      def configure(config)
        case config[:did]
        when 'sidetree'
          Rubyrpctest::DID::Internal::DIDAdapter.did_adapter = Rubyrpctest::DID::Protocol::Sidetree.new(config)
        end
      end

    end
  end
end