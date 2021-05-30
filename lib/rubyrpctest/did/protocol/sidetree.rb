module Rubyrpctest
  class DID
    module Protocol
      class Sidetree
        autoload :Operation, 'rubyrpctest/did/protocol/sidetree/operation'

        def create_did
          Operation.create_operation
        end

        def create_operation
          Operation.create_operation
        end

        def resolve

        end

        def createOperation
        
        end
      end
    end
  end
end