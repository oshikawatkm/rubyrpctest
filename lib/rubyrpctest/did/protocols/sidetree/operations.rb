module Rubyrpctest
  class DID
    module Protocols
      class Sidetree
        module Operations

          def createOperation
            recoveryPublicKey, recoveryPrivateKey = Rubyrpctest::Utils.generateEs256kKeyPair
            updatePublicKey, updatePrivateKey = Rubyrpctest::Utils.generateEs256kKeyPair
            signingPublicKey, signingPrivateKey = generateKeyPair
            services = generateService
            operationRequest = generateOperationRequest 
            createOperation = nil
            return [
              createOperation,
              operationRequest,
              recoveryPublicKey,
              recoveryPrivateKey,
              updatePublicKey,
              updatePrivateKeys,
              signingPublicKey,
              signingPrivateKey
            ]
          end

          def generateKeyPair(id:, purposes:)
            publicKey, privateKey = Rubyrpctest::Utils.generateEs256kKeyPair
            publicKeyModel = { 
              'id': id, 
              'type': 'EcdsaSecp256k1VerificationKey2019',
              'publicKeyJwk': publicKey,
              'purposes': purposes 
            }
            [publicKeyModel, privateKey]
          end

          def generateService(ids:)
            services = Array.new
            ids.each do |id|
              services.push({
                'id': id,
                'type': 'someType',
                'serviceEndpoint': 'https://www.url.com'
              })
            end
            services
          end

          private

      end
    end
  end
end