module RegexGen
  class Node
    attr_accessor :childrens

    def initialize
      @childrens = []
    end

    def leaf?
      @childrens.empty?
    end

    def << child
      @childrens << child
    end
  end
end
