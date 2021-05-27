module Rubyrpctest
  class DID
    module Internal
      class Utils
        class << self

          def createDid
            did_adapter.createDid
          end

          def resolve
            did_adapter.resolve
          end
        end
        
      end
    end
  end
end