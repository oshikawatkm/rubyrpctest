module Rubyrpctest
  module Generators
    class InitilizerGeneratpr < Rails::Generators::Base
      source_root File.expand_path('templates', __dir__)

      def create_initializer_file
        template "initializer.rb.erb", "config/initializers/didrb.rb"
      end
  end
end