module RegexGen
  class Example
    attr_accessor :example

    def initialize(example)
      validate_example(example)
      @example = example
    end

    private

    def validate_example(example)
      unless example =~ /{{/
        raise 'Invalid example: No group found'
      end
    end

  end
end
