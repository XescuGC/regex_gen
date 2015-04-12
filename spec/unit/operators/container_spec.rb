describe RegexGen::Operators::Container do
  it 'must add an attribute :container' do
    expect(Object.new.extend(RegexGen::Operators::Container)).to respond_to(:content)
  end
end
