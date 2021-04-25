

module Rubyrpctest
  class Cas
    module Internal
      class Ipfs < AbstructCas 
        autoload :Connection, ''

        def write(file)
          
        end

        def fetch(hash)
          url = `#{schema}://#{host}:#{port}/api/v0/arg=#{}&length=#{}`
          Connection.get(url)
        end

        def read(file)
          
        end

      end
    end
  end
end