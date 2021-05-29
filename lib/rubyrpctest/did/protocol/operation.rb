module Rubyrpctest
  class DID
    module Protocol
      class Sidetree
        module Operations
          autoload :CreateOperation, 'rubyrpctest/did/protocol/sidetree/operation/create_operation'
          autoload :OperationType, 'rubyrpctest/did/protocol/sidetree/operation/enum/operation_type'
          autoload :PatchAction, 'rubyrpctest/did/protocol/sidetree/operation/enum/patch_action'
          module_function

          def create_operation
            recovery_pubey, recovery_prikey = Rubyrpctest::DID::Utils::Key.generate_es256k_key_pair
            update_pubkey, update_privey = Rubyrpctest::DID::Utils::Key.generate_es256k_key_pair
            signing_pubkey, signing_privkey = generate_key_pair('', '')
            services = generate_service(['serviceId123'])
            operation_request = CreateOperation.new(
              recovery_pubey, 
              update_pubkey,
              update_pubkey,
              services
            )
            operation_request_buffer = operation_request.pack("H*")
            createOperation = CreateOperation.parse(operation_request_buffer)
            return [
              create_operation,
              operation_request,
              recovery_pubey,
              recovery_prikey,
              update_pubkey,
              update_privey,
              signing_pubkey,
              signing_privkey
            ]
          end

          def generate_key_pair(id = 'signingKey', purposes)
            pubkey, privkey = Rubyrpctest::DID::Utils::Key.generate_es256k_key_pair
            pubkey_model = { 
              'id': id, 
              'type': 'EcdsaSecp256k1VerificationKey2019',
              'publicKeyJwk': pubkey,
              'purposes': purposes ? purposes : []
            }
            [pubkey_model, privkey]
          end

          def generate_service(ids = ['serviceId123'])
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

          def generate_operation_request

          end

          private

        end
      end
    end
  end
end