describe RegexGen::TrainingSet do
  describe '<<' do
    it 'must add a new example' do
      subject << '{{test}}'
      expect(subject.examples.count).to eq(1)
      expect(subject.examples.first.class).to eq(RegexGen::Example)
    end
  end
end
