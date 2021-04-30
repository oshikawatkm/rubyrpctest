

module Rubyrpctest
  class Cas
    module Internal
      class Ipfs < AbstructCas

        def write(file)
          url = `#{schema}://#{host}:#{port}/api/v0/arg=#{}&length=#{}`
          Connection.post(url)
        end

        def fetch(hash)
          url = `#{schema}://#{host}:#{port}/api/v0/arg=#{}&length=#{}`
          Connection.get(url)
        end

        def read(file)
          url = ``
        end

      end
    end
  end
end