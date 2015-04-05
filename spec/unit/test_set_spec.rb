describe RegexGen::TestSet do
  describe '<<' do
    it 'must add a new test' do
      subject << "test"
      expect(subject.test_set.count).to eq(1)
    end
  end
end
