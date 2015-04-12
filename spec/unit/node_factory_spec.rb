describe RegexGen::NodeFactory do
  context '#create_node_container' do
    before(:each) do
      @node = RegexGen::NodeFactory.create_node_container('content')
    end
    it 'the node must include the RegexGen::Operators::Container' do
      expect(@node.is_a?(RegexGen::Operators::Container)).to be_truthy
    end
    it 'the node must have the correct content' do
      expect(@node.content).to eq('content')
    end
  end
  context '#create_node_concatenator' do
    before(:each) do
      @node = RegexGen::NodeFactory.create_node_concatenator
    end
    it 'must include the RegexGen::Operators::Concatenator' do
      expect(@node.is_a?(RegexGen::Operators::Concatenator)).to be_truthy
    end
  end
end
