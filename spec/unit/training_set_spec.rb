describe RegexGen::TrainingSet do
  describe '#<<' do
    it 'must add a new example' do
      subject << '{{test}}'
      expect(subject.examples.count).to eq(1)
      expect(subject.examples.first.class).to eq(RegexGen::Example)
    end
  end
  describe '#flush' do
    it 'must flush all the examples' do
      subject << '{{test}}'
      subject.flush
      expect(subject.examples).to eq([])
    end
  end
end
