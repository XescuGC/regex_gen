describe RegexGen do
  context 'must define this public API' do
    it { expect(subject).to respond_to(:generate!) }
  end
end
