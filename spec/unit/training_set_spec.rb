describe RegexGen::TrainingSet do
  subject { RegexGen::TrainingSet }
  before(:each) do
    @training_set = subject.new
  end
  describe '#new' do
    it 'must add a new example if defined' do
      ts = subject.new('{s:{test}}')
      ts_array = subject.new(['{s:{test}}'])
      expect(ts.examples.count).to eq(1)
      expect(ts_array.examples.count).to eq(1)
      expect(ts.examples.first.class).to eq(RegexGen::Example)
      expect(ts_array.examples.first.class).to eq(RegexGen::Example)
    end
    it 'must not add nil value' do
      expect(@training_set.examples.count).to eq(0)
    end
  end
  describe '#<<' do
    it 'must add a new example' do
      @training_set << '{s:{test}}'
      expect(@training_set.examples.count).to eq(1)
      expect(@training_set.examples.first.class).to eq(RegexGen::Example)
    end
  end
  describe '#flush' do
    it 'must flush all the examples' do
      @training_set << '{s:{test}}'
      @training_set.flush
      expect(@training_set.examples).to eq([])
    end
  end
end
