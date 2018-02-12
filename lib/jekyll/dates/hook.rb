# Frozen-string-literal: true
# Copyright: 2018 - MIT License
# Author: Jordon Bedwell
# Encoding: utf-8

require "date"
Jekyll::Hooks.register :site, :pre_render do |_, h|
  h["date"] = Drop.new(DateTime.now)
end
