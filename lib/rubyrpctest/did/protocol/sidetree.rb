module Rubyrpctest
  class DID
    module Protocol
      autoload :Operations, 'rubyrpctest/did/protocol/sidetree/operation'

      class Sidetree

        def create_did
          Operations.create_operation
        end

        def create_operation
          Operations.create_operation
        end

        def resolve

        end

        def createOperation
        
        end
      end
    end
  end
end