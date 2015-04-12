describe RegexGen::Node do
  subject { RegexGen::Node }
  before(:each) do
    @node = subject.new
    @aux_node = subject.new
  end
  context 'must initialize' do
    it 'with default values' do
      expect(@node.right_children).to eq(nil)
      expect(@node.left_children).to eq(nil)
      expect(@node.parent_node).to eq(nil)
    end
    it 'with values' do
      node = subject.new(@aux_node, @aux_node, @aux_node)
      expect(node.right_children).to eq(@aux_node)
      expect(node.left_children).to eq(@aux_node)
      expect(node.parent_node).to eq(@aux_node)
    end
    it 'with errors if not valid nodes' do
      expect{subject.new('test')}.to raise_error('Invalid left_children type, must be a RegexGen::Node')
      expect{subject.new(nil, 'test')}.to raise_error('Invalid right_children type, must be a RegexGen::Node')
      expect{subject.new(nil, nil, 'test')}.to raise_error('Invalid parent_node type, must be a RegexGen::Node')
    end
  end

  context '#right_children=' do
    it 'must set the value' do
      @node.right_children = @aux_node
      expect(@node.right_children).to eq(@aux_node)
    end
    it 'must throw error if it\'s not a RegexGen::Node' do
      expect{@node.right_children = 'invalid'}.to raise_error('Invalid right_children type, must be a RegexGen::Node')
    end
  end

  context '#left_children=' do
    it 'must set the value' do
      @node.left_children = @aux_node
      expect(@node.left_children).to eq(@aux_node)
    end
    it 'must throw error if it\'s not a RegexGen::Node' do
      expect{@node.left_children = 'invalid'}.to raise_error('Invalid left_children type, must be a RegexGen::Node')
    end
  end

  context '#parent_node=' do
    it 'must set the value' do
      @node.parent_node = @aux_node
      expect(@node.parent_node).to eq(@aux_node)
    end
    it 'must throw error if it\'s not a RegexGen::Node' do
      expect{@node.parent_node = 'invalid'}.to raise_error('Invalid parent_node type, must be a RegexGen::Node')
    end
  end

  context '#is_leaf?' do
    it 'must be false with some childrens' do
      expect(@node.is_leaf?).to be_truthy
    end
    it 'must be true with no childrens' do
      @node.left_children = @aux_node
      expect(@node.is_leaf?).to be_falsey
    end
  end
end
