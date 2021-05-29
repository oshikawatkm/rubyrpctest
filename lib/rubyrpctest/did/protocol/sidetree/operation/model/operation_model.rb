module Rubyrpctest
  class DID
    module Protocol
      class Sidetree
        module Operations
          class OperationModel

            # initilize operation
            # @param didUniqueSuffix [String]
            # @param type [OperationType]
            # @param operationBuffer [Buffer]
            def initialize(didUniqueSuffix:, type:, operationBuffer:)
              @didUniqueSuffix = didUniqueSuffix
              @type = type
              @operationBuffer = operationBuffer
            end

          end
        end
      end
    end
  end
end