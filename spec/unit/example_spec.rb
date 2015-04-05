describe RegexGen::Example do
  subject { RegexGen::Example }
  context 'must create it' do
    it 'with valid example' do
      example = subject.new '{{string}}'
      expect(example.example).to eq('{{string}}')
    end
    it 'with invalid example' do
      expect{
        subject.new 'string'
      }.to raise_error('Invalid example: No group found')
    end
  end
end
