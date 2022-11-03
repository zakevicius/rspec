RSpec.describe Array do
  subject(:sally) { [1, 2] }

  it 'has two elements' do
    expect(sally.length).to eq(2)
    sally.pop
    expect(sally.length).to eq(1)
  end

  it 'is equal to original array' do
    expect(sally).to eq([1, 2])
  end
end