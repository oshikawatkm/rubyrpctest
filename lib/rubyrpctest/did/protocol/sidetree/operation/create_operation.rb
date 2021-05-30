module Rubyrpctest
  class DID
    module Protocol
      class Sidetree
        module Operation
          class CreateOperation < OperationModel
            attr_accessor :operationBuffer, :didUniqueSuffix, :delta, :deltaHash
            @@type = OperationType::CREATE

            def initialize(operation_buffer, did_unique_suffix, suffix_data, delta)
              @operation_buffer = operation_buffer
              @did_unique_suffix = did_unique_suffix
              @suffix_data = suffix_data
              @delta = delta
            end

            def generate(recovery_pubkey, update_pubkey, other_pubkeys, services)
              patches = generatePatches(other_pubkeys, services)
              delta = generateDelta(recovery_pubkey, patches)
              deltaHash = Hash.double_hash_and_encode(delta)

              recovery_commetment = generate_recovery_commetment(recovery_pubkey)
              suffix_data = { type: OperationType::Create, suffixData: suffix_data, delta: delta }
            end

            def parse(operation_buffer)
              @operation_buffer = operation_buffer
              @did_unique_suffix = Hash.hashAndEncode(operation_json_string)
              @suffix_data = operation_object.suffix_data
              @delta = operation_object.delta
              CreateOperation.new(@operation_buffer, @did_unique_suffix, @suffix_data, @delta)
            end

            def self.did_unique_suffix
              @did_unique_suffix
            end

            private

            def generate_patches(pubkeys, services)
              JSON.generate({ 'ation': PatchAction::Replace, 'document': { 'publicKeys': pubkeys, 'services': services}})
            end

            def generate_delta(pubkey, patches)
              update_commitment = Hash.double_hash(pubkey)
              JSON.generate({ 'update_commitment': update_commitment, 'patches': patches})
            end

            def generate_recovery_commetment(pubkey)
              double_hashed_recovery_pubkey = Hash.double_hash(recovery_pubkey)
              JSON.generate(double_hashed_recovery_pubkey)
            end

          end
        end
      end
    end
  end
end