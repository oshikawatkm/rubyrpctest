module Rubyrpctest
  class DID
    module Protocol
      class Sidetree
        module Operation
          module PatchAction
            REPLACE = 'replace',
            ADD_PUBLICK_KEYS = 'add-public-keys',
            REMOVE_PUBLIC_KEYS = 'remove-public-keys',
            ADD_SERVICES = 'add-services',
            REMOVE_SERVICES = 'remove-services'
          end
        end
      end
    end
  end
end