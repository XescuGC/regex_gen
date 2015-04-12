describe RegexGen::Operators::Concatenator do
  it 'must add an attribute :opperator' do
    obj = Object.new.extend(RegexGen::Operators::Concatenator)
    expect(obj).to respond_to(:operator)
    expect(obj.operator).to eq('')
  end
end
