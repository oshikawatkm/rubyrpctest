module Rubyrpctest
  class DID
    module Protocols
      class Sidetree
        module Operations
          class CreateOperation
            attr_reader: didUniqueSuffix

            def initialize(recoveryPublicKey, updatePublicKey, otherPublicKeys, services)
              patches = generatePatches(otherPublicKeys, services)
              delta = generateDelta(updatePublicKey, patches)
              deltaHash = Hash.doubleHashAndEncode(delta)

              recoveryCommetment = generateRecoveryCommetment(recoveryPublicKey)
              suffixData = { 'deltaHash': deltaHash, 'recoveryCommetment': recoveryCommetment } 

              { type: OperationType::Create, suffixData, delta }
            end

            def didUniqueSuffix
              @didUniqueSuffix
            end

            private

            def generatePatches(pubkeys, services)
              JSON.generate({ 'ation': PatchAction::Replace, 'document': { 'publicKeys': pubkeys, 'services': services}})
            end

            def generateDelta(pubkey, patches)
              updateCommitment = Hash.doubleHash(pubkey)
              JSON.generate({ 'updateCommitment': updateCommitment, 'patches': patches})
            end

            def generateRecoveryCommetment(pubkey)
              doubleHashedRecoveryPublicKey = Hash.doubleHash(recoveryPublicKey)
              JSON.generate(doubleHashedRecoveryPublicKey)
            end

          end
        end
      end
    end
  end
end