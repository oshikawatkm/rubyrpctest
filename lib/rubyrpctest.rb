# frozen_string_literal: true

require_relative "rubyrpctest/version"
require 'bitcoin'

module Rubyrpctest
  autoload :Blockchain, 'rubyrpctest/blockchain'
  autoload :Cas, 'rubyrpctest/cas'
  autoload :DID, 'rubyrpctest/did'
end
