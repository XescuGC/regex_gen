require 'regex_gen/version'
require 'regex_gen/test_set'

module RegexGen
  class << self
    def generate!
    end

    def add_to_test_set(test)
      TestSet << test
    end

    def remove_from_test_set
    end

    def flush_test_set
      TestSet.flush
    end
  end
end
