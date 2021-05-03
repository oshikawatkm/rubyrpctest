module Rubyrpctest
  class DID
    module Internal
      class Sidetree
        module Operations
          class CreateOperation
            attr_accessor: operationBuffer, didUniqueSuffix, delta, deltaHash

            def initialize(operationBuffer, didUniqueSuffix, suffixData, delta)
              @operationBuffer = operationBuffer
              @didUniqueSuffix = didUniqueSuffix
              @suffixData = suffixData
              @delta = delta
            end

            def generate(recoveryPublicKey, updatePublicKey, otherPublicKeys, services)
              patches = generatePatches(otherPublicKeys, services)
              delta = generateDelta(updatePublicKey, patches)
              deltaHash = Hash.doubleHashAndEncode(delta)

              recoveryCommetment = generateRecoveryCommetment(recoveryPublicKey)
              suffixData = { 'deltaHash': deltaHash, 'recoveryCommetment': recoveryCommetment }

              { type: OperationType::Create, suffixData, delta }
            end

            def parse(operationBuffer)
              @operationBuffer = operationBuffer
              @didUniqueSuffix = Hash.hashAndEncode(operationJsonString)
              @suffixData = operationObject.suffixData
              @delta = operationObject.delta
              CreateOperation.new(@operationBuffer, @didUniqueSuffix, @suffixData, @delta)
            end

            def self.didUniqueSuffix
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