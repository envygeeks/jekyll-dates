# Frozen-string-literal: true
# Copyright: 2018 - MIT License
# Author: Jordon Bedwell
# Encoding: utf-8

require "forwardable/extended"
require "liquid/drop/str"

module Jekyll
  module Dates
    class Drop < Liquid::Drop::Str
      extend Forwardable::Extended

      rb_delegate :year, to: :@date
      rb_delegate :month, to: :@date
      rb_delegate :day, to: :@date
      rb_delegate :min, to: :@date
      rb_delegate :hour, to: :@date
      rb_delegate :sec, to: :@date
      rb_delegate :unix, {
        to: :@date, alias_of: :to_i
      }

      def initialize(current)
        @date = current
      end

      # --
      def epoch
        Time.at(0)
      end

      # --
      def months
        %w(January February March April May June
           July August September October November
           December).freeze
      end

      # --
      def months_abbr
        %w(Jan Feb Mar Apr May Jun
           Jul Aug Sep Oct Nov
           Dec).freeze
      end
    end
  end
end
