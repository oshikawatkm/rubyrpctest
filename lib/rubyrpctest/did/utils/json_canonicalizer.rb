module Rubyrpctest
  class DID
    module Utils
      module JsonCanonicalizer
        module_function

        # Canonicalize the json and convert it to Buffer
        # @param content [Objrct] json content
        # @return [Buffer] canonicalized content buffer
        def canonicalizeAsBuffer(content)
          canonicalizedString = content.to_json_c14n
        end

      end
    end
  end
end