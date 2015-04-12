module RegexGen
  module Operators
    module Container
      def self.extended(base)
        base.class.module_eval do
          attr_accessor :content
        end
      end
    end
  end
end
