module RegexGen
  class Example
    attr_accessor :example, :basic_example

    def initialize(example)
      validate_example(example)
      @example = example
      @basic_example = nil
    end

    def to_basic
      unless @basic_example
        cl_example = @example.clone
        @example.scan(/({[a-zA-Z_]+:{([^}]+)}})/){ |w| cl_example.gsub!(w[0], w[1]) }
        @basic_example = cl_example
      end
      @basic_example
    end

    private

    def validate_example(example)
      if example.scan(/{([a-zA-Z_]+):{([^}]+)}}/).empty?
        raise 'Invalid example: No group found'
      end
    end

  end
end
