require 'regex_gen/version'
require 'regex_gen/example'
require 'regex_gen/training_set'
require 'regex_gen/operators/container'
require 'regex_gen/operators/concatenator'
require 'regex_gen/node'
require 'regex_gen/node_factory'
require 'regex_gen/tree'


module RegexGen
  class << self
    def generate!(training_set)
      raise 'Invalid Argument: Not a RegexGen::TrainingSet' unless training_set.is_a?(RegexGen::TrainingSet)
    end
  end
end
