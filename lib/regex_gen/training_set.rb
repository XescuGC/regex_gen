module RegexGen
  class TrainingSet
    attr_accessor :examples

    def initialize(examples=nil)
      @examples = []
      add_examples(examples) if examples
      self
    end

    def <<(example)
      add_examples(example)
    end

    def flush
      @examples = []
    end

    private
    
    def add_examples(examples)
      if examples.is_a?(Array)
        examples.each { |e| add_examples(e) }
      else
        @examples << Example.new(examples)
      end
    end
  end
end
