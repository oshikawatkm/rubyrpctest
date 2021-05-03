module Rubyrpctest
  class DID
    module Internal
      autoload :Operations, 'rubyrpctest/did/protocols/sidetree/operations'
      class Sidetree

        def createDid
          Operations.createOperation
        end

        def resolve

        end

      end
    end
  end
end