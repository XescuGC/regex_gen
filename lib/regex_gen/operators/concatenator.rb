module RegexGen
  module Operators
    module Concatenator
      def self.extended(base)
        base.class.module_eval do
          attr_accessor :operator
        end
        base.operator = ''
      end
    end
  end
end
