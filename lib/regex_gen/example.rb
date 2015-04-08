module RegexGen
  class Example
    attr_accessor :example

    def initialize(example)
      validate_example(example)
      @example = example
    end

    private

    def validate_example(example)
      if example.scan(/{([a-zA-Z_]+):{([^}]+)}}/).empty?
        raise 'Invalid example: No group found'
      end
    end

  end
end
