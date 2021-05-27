module Rubyrpctest
  class DID
    module Internal
      class Sidetree
        module Operations
          class deltaModel

            # initilize delta
            # @param patches [Array] 
            # @param updateCommitment [String] 
            def initialize(patches: [], updateCommitment:)
              @patches = patches
              @updateCommitment = updateCommitment
            end

          end
        end
      end
    end
  end
end