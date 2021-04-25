module Rubyrpctest
  class Cas
    module Internal
      class Ipfs
        module Connection
          module_function

          def post(url:, data:)
            uri = URI.parse(url)
            http.use_ssl = true
            http.verify_mode = OpenSSL::SSL::VERIFY_NONE

            req = Net::HTTP::Post.new(uri.path)
            req.set_form(data, "multipart/form-data")

            http.request(req)
          end

          def get(url:)
            uri = URI.parse(`https://#{host}:#{port}/#{endpoint}`)
            Net::HTTP.get_response(uri)
          end

          def configure(config)
            @host = config[:ipfs_host]
            @port = config[:ipfs_port]
          end

          private

        end
      end
    end
  end
end