module Rubyrpctest
  class DID
    module Utils
      module Jwk
        module_function

        def create_did
          did_adapter.createDid
        end

        def resolve
          did_adapter.resolve
        end

      end
    end
  end
end