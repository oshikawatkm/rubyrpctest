module Rubyrpctest
  class Cas
    module Internal
      class Ipfs
        module Mock
          class Ipfs < AbstructCas
            module_function

            def write
              
            end

            def fetch

            end

            def read

            end

            # DATA_SAMPLE: { :hash => "somehash...", :content => { :hoge => "hogehohge", ... }}
            def initialize
              @store = []
            end

        end
      end
    end
  end
end