module Rubyrpctest
  class DID
    module Utils
      module Jws
        module_function

        def createDid
          did_adapter.createDid
        end

        def resolve
          did_adapter.resolve
        end

      end
    end
  end
end