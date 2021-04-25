module Rubyrpctest
  class Cas
    module Internal
      class AbstructCas

        def write(file)
          raise NotImplementedError, "You must implement #{self.class}##{__method__}"
        end

        def fetch(hash)
          raise NotImplementedError, "You must implement #{self.class}##{__method__}"
        end

        def read(file)
          raise NotImplementedError, "You must implement #{self.class}##{__method__}"
        end
           
      end
    end
  end
end