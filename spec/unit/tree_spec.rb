describe RegexGen::Tree do
  before(:each) do
    @tree = RegexGen::Tree.new(RegexGen::Example.new('{s:{string}}'))
  end
  context '#new' do
    it 'must create a basic tree for the example' do
      expect(@tree.to_regex).to eq('{s:{string}}')
    end
  end
  context '#group!' do
    it 'must match the groups and transform them' do
      @tree.group!
      expect(@tree.to_regex).to eq('(?<s>string)')
    end
  end
end
