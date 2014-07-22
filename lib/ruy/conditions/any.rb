module Ruy
  module Conditions

    # Expects that at least one of the rules will succeed.
    class Any < Ruy::Rule
      def call(var_ctx)
        @conditions.any? do |condition|
          condition.call(var_ctx)
        end
      end

      def ==(o)
        o.kind_of?(Any) &&
          conditions == o.conditions
      end
    end
  end
end
