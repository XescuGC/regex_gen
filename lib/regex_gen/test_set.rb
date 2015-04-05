module RegexGen
  class TestSet
    attr_accessor :test_set

    def initialize
      @test_set = []
    end

    def test_set
    end

    def <<(test)
      test_set << test
    end

    def flush
      test_set = []
    end
  end
end
