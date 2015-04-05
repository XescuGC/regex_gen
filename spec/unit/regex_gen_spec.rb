describe RegexGen do
  context 'must define this public API' do
    it { expect(subject).to respond_to(:generate!) }
    it { expect(subject).to respond_to(:add_to_test_set) }
    it { expect(subject).to respond_to(:remove_from_test_set) }
    it { expect(subject).to respond_to(:flush_test_set) }
  end
end
