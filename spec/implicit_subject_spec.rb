RSpec.describe Hash do
  # let(:subject) { {} }
  # let(:subject) { Hash.new }
  # The above is the same as predefined RSpec subject (class defined in describe)

  it 'should start off empty' do
    p subject
    p subject.class
    expect(subject.length).to eq(0)

    subject[:some_key] = 'Some value'
    expect(subject.length).to eq(1)
  end

  it 'is isolated between examples' do
    expect(subject.length).to eq(0)
  end
end