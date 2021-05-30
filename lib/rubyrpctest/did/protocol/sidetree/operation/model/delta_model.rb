module Rubyrpctest
  class DID
    module Protocol
      class Sidetree
        module Operation
          class deltaModel

            # initilize delta
            # @param patches [Array] 
            # @param update_commitment [String] 
            def initialize(patches: [], update_commitment:)
              @patches = patches
              @update_commitment = update_commitment
            end

          end
        end
      end
    end
  end
end