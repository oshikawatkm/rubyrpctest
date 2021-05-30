module Rubyrpctest
  class DID
    module Protocol
      class Sidetree
        module Operation
          class OperationModel

            # initilize operation
            # @param didUniqueSuffix [String]
            # @param type [OperationType]
            # @param operationBuffer [Buffer]
            def initialize(did_unique_suffix:, type:, operatio_buffer:)
              @didUniqueSuffix = did_unique_suffix
              @type = type
              @operation_buffer = operatio_buffer
            end

          end
        end
      end
    end
  end
end