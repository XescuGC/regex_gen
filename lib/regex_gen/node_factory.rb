module RegexGen
  class NodeFactory
    class << self
      def create_node_container(content)
        node = RegexGen::Node.new.extend(RegexGen::Operators::Container)
        node.content = content
        node
      end

      def create_node_concatenator(left_children=nil, right_children=nil, parent=nil)
        RegexGen::Node.new(left_children, right_children, parent).extend(RegexGen::Operators::Concatenator)
      end
    end
  end
end
