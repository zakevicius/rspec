RSpec.describe Array do
  it 'pushes to array' do
    expect(subject.length).to eq(0)

    subject.push('some value')

    expect(subject.length).to eq(1)
  end
end