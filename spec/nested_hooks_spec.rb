RSpec.describe 'nested hooks' do
  before(:context) do
    puts "OUTER Before context"
  end

  before(:example) do
    puts "OUTER Before example"
  end

  it 'does basic math' do
    expect(1 + 1).to eq(2)
  end

  context 'with condition A' do
    before(:context) do
      puts "INNER Before context A"
    end

    before(:example) do
      puts "INNER Before example A"
    end

    it 'does more basic math' do
      expect(1 + 1).to eq(2)
    end

    it 'does subtraction as well' do
      expect(5 - 3).to eq(2)
    end
  end

  context 'with condition B' do
    before(:context) do
      puts "INNER Before context B"
    end

    before(:example) do
      puts "INNER Before example B"
    end

    it 'does more basic math' do
      expect(1 + 1).to eq(2)
    end

    it 'does subtraction as well' do
      expect(5 - 3).to eq(2)
    end
  end
end