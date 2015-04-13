module RegexGen
  class Tree
    attr_accessor :parent
    attr_accessor :example

    def initialize(example)
      return 'Invalid example, must be a RegexGen::Example' unless example.is_a?(RegexGen::Example)
      @example = example 
      @parent = create_tree(nil, @example.example.each_char.map.to_a)
    end

    def to_regex
      traversal(@parent)
    end

    def group!
    end

    private

    def traversal(node)
      return node.content if node.is_leaf?
      return traversal(node.left_children) + node.operator + traversal(node.right_children)
    end

    def create_tree(parent, missing_chars)
      return parent if missing_chars.empty?
      unless parent
        left_node = RegexGen::NodeFactory.create_node_container(missing_chars.slice!(0))
        right_node = RegexGen::NodeFactory.create_node_container(missing_chars.slice!(0))
        node = RegexGen::NodeFactory.create_node_concatenator(left_node, right_node)
        left_node.parent_node = node
        right_node.parent_node = node
        return create_tree(node, missing_chars)
      else
        right_node = RegexGen::NodeFactory.create_node_container(missing_chars.slice!(0))
        node = RegexGen::NodeFactory.create_node_concatenator(parent, right_node)
        right_node.parent_node = node
        return create_tree(node, missing_chars)
      end
    end
  end
end
