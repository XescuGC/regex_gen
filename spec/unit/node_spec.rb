describe RegexGen::Node do
  subject { RegexGen::Node }
  it 'must initialize it with default' do
    expect(subject.new.childrens).to eq ([])
  end
  context '#<<' do
    it 'must add a child to the node' do
      node = subject.new
      node << 'test'
      expect(node.childrens.count).to be(1)
      expect(node.childrens.first).to eq('test')
    end
  end
end
