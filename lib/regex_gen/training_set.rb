module RegexGen
  class TrainingSet
    attr_accessor :examples

    def initialize
      @examples = []
    end

    def <<(example)
      @examples << Example.new(example)
    end

    def flush
      @examples = []
    end
  end
end
