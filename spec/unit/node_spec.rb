describe RegexGen::Node do
  subject { RegexGen::Node }
  before(:each) do
    @node = subject.new
  end
  it 'must initialize it with default' do
    expect(@node.childrens).to eq ([])
  end
  context '#<<' do
    it 'must add a child to the node' do
      @node << 'test'
      expect(@node.childrens.count).to be(1)
      expect(@node.childrens.first).to eq('test')
    end
  end
  context '#leaf?' do
    it 'must be false with some childrens' do
      expect(@node.leaf?).to be_truthy
    end
    it 'must be true with no childrens' do
      @node << 'child'
      expect(@node.leaf?).to be_falsey
    end
  end
end
