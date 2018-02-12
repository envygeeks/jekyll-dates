# Frozen-string-literal: true
# Copyright: 2018 - MIT License
# Author: Jordon Bedwell
# Encoding: utf-8

require "jekyll"

module Jekyll
  module Dates
    require_relative "dates/drop"
    require_relative "dates/hook"
  end
end
