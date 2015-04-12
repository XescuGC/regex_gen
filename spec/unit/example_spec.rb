describe RegexGen::Example do
  subject { RegexGen::Example }
  before(:each) do
    @example = subject.new('{s:{string}}')
  end
  describe '#new' do
    context 'must create it' do
      it 'with valid example' do
        expect(@example.example).to eq('{s:{string}}')
      end
      it 'with invalid example' do
        expect{
          subject.new 'string'
        }.to raise_error('Invalid example: No group found')
      end
    end
  end
  context '#to_basic' do
    it 'must get the example string without the groups' do
      expect(@example.to_basic).to eq('string')
      expect(@example.basic_example).to eq('string')
    end
  end
end
