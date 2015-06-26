module Ruy
  module Conditions

    # Expects that a context attribute will be less than or equal to the given value.
    class LessThanOrEqual < Ruy::Rule
      attr_reader :attr, :value

      # @param attr Context attribute's name
      # @param value
      def initialize(attr, value)
        super
        @attr = attr
        @value = value
      end

      def call(var_ctx)
        @value >= var_ctx.resolve(@attr)
      end

      def ==(o)
        o.kind_of?(LessThanOrEqual) &&
          attr == o.attr &&
          value == o.value &&
          self.conditions == o.conditions
      end
    end
  end
end
