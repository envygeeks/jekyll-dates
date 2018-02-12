# Frozen-string-literal: true
# Copyright: 2018 - MIT License
# Author: Jordon Bedwell
# Encoding: utf-8

require "rspec/helper"
describe Jekyll::Dates do
  subject do
    Jekyll::Dates::Drop.new(DateTime.now)
  end

  %i(year month day min hour sec unix epoch months months_abbr).each do |v|
    it "should respond to #{v}" do
      expect(subject).to respond_to v
    end
  end
end
