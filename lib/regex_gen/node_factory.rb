module RegexGen
  class NodeFactory
    class << self
      def create_node_container(content)
        node = RegexGen::Node.new.extend(RegexGen::Operators::Container)
        node.content = content
        node
      end

      def create_node_concatenator
        RegexGen::Node.new.extend(RegexGen::Operators::Concatenator)
      end
    end
  end
end
