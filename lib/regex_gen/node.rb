module RegexGen
  class Node
    attr_reader :parent_node
    attr_reader :right_children
    attr_reader :left_children

    def initialize(parent_node=nil, left_children=nil, right_children=nil)
      self.parent_node = parent_node
      self.left_children = left_children
      self.right_children = right_children
    end

    def right_children=(children)
      if children.is_a?(RegexGen::Node) or children.nil?
        @right_children = children
      else
        raise 'Invalid right_children type, must be a RegexGen::Node'
      end
    end

    def left_children=(children)
      if children.is_a?(RegexGen::Node) or children.nil?
        @left_children = children
      else
        raise 'Invalid left_children type, must be a RegexGen::Node'
      end
    end

    def parent_node=(parent)
      if parent.is_a?(RegexGen::Node) or parent.nil?
        @parent_node = parent
      else
        raise 'Invalid parent_node type, must be a RegexGen::Node'
      end
    end

    def is_leaf?
      @left_children.nil? && @right_children.nil?
    end

  end
end
