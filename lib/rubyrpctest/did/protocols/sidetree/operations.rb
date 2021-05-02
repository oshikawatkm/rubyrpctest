module Rubyrpctest
  class DID
    module Internal
      class Sidetree
        module Operations
          autoload :CreateOperation, 'rubyrpctest/did/protocols/sidetree/operations/create_operation'
          autoload :OperationType, 'rubyrpctest/did/protocols/sidetree/operations/operation_type'
          autoload :PatchAction, 'rubyrpctest/did/protocols/sidetree/operations/patch_action'
          module_function

          def createOperation
            recoveryPublicKey, recoveryPrivateKey = Rubyrpctest::Utils::Key.generateEs256kKeyPair
            updatePublicKey, updatePrivateKey = Rubyrpctest::Utils::Key.generateEs256kKeyPair
            signingPublicKey, signingPrivateKey = generateKeyPair('', '')
            services = generateService(['serviceId123'])
            operationRequest = nil #generateOperationRequest 
            createOperation = CreateOperation.new(
              recoveryPublicKey, 
              updatePublicKey,
              signingPublicKey,
              services
            )
            return [
              createOperation,
              operationRequest,
              recoveryPublicKey,
              recoveryPrivateKey,
              updatePublicKey,
              updatePrivateKey,
              signingPublicKey,
              signingPrivateKey
            ]
          end

          def generateKeyPair(id = 'signingKey', purposes)
            publicKey, privateKey = Rubyrpctest::Utils::Key.generateEs256kKeyPair
            publicKeyModel = { 
              'id': id, 
              'type': 'EcdsaSecp256k1VerificationKey2019',
              'publicKeyJwk': publicKey,
              'purposes': purposes ? purposes : []
            }
            [publicKeyModel, privateKey]
          end

          def generateService(ids = ['serviceId123'])
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
end