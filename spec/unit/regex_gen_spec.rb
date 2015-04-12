describe RegexGen do
  context 'must define this public API' do
    it { expect(subject).to respond_to(:generate!) }
  end

  describe '#generate!' do
    context 'must return error if the arguments is not a RegexGen::TrainingSet' do
      it 'with nil argument' do
        expect{subject.generate!(nil)}.to raise_error('Invalid Argument: Not a RegexGen::TrainingSet')
      end
      it 'with no Regex::TrainingSet' do
        expect{subject.generate!('training set')}.to raise_error('Invalid Argument: Not a RegexGen::TrainingSet')
      end
    end
  end
end
