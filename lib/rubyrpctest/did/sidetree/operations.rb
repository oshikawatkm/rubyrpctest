module Rubyrpctest
  class DID
    module Protocols
      class Sidetree
        module Operations

          def createOperation
            recoveryPublicKey, recoveryPrivateKey = Rubyrpctest::Utils.generateEs256kKeyPair
            updatePublicKey, updatePrivateKey = Rubyrpctest::Utils.generateEs256kKeyPair
            
          end

      end
    end
  end
end