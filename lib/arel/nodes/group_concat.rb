module Arel
  module Nodes
    class GroupConcat < Arel::Nodes::Function

      attr_accessor :joiner

      def initialize expr, joiner = nil, aliaz = nil
        super(expr, aliaz)
        @joiner = joiner || SqlLiteral.new("','")
      end
    end
  end
end
