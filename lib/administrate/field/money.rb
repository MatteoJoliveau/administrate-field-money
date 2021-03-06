require 'rails'
require 'administrate/field/text'
require 'administrate/engine'

module Administrate
  module Field
    class Money < Administrate::Field::Text
      delegate :currency, to: :money

      class Engine < ::Rails::Engine
        Administrate::Engine.add_javascript 'administrate-field-money/application'
      end

      def to_s
        money.format(symbol: symbol, separator: separator, delimiter: delimiter)
      end

      def money
        @money ||= ::Money.new(data, code)
      end

      def code
        options.fetch(:code, ::Money.default_currency.iso_code)
      end

      def symbol
        options.fetch(:symbol, currency.symbol)
      end

      def delimiter
        options.fetch(:delimiter, currency.thousands_separator)
      end

      def separator
        options.fetch(:separator, currency.decimal_mark)
      end
    end
  end
end
