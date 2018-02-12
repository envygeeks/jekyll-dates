# Frozen-string-literal: true
# Copyright: 2018 - MIT License
# Author: Jordon Bedwell
# Encoding: utf-8

$VERBOSE = nil
require "rspec"
require "support/coverage"
require "luna/rspec/formatters/checks"
require "jekyll/dates"
require "jekyll"

Dir[File.expand_path("../support/*.rb", __dir__)].each do |v|
  require v
end
