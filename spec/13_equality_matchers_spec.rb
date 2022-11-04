RSpec.describe 'equality matchers' do
  let(:a) { 3.0 }
  let(:b) { 3 }

  describe 'eq matcher' do
    it 'tests for value and ignores type' do
      expect(a).to eq(3)
      expect(b).to eq(3.0)
      expect(a).to eq(b)
    end
  end

  describe 'eql matcher' do
    it 'tests for value, including same type' do
      expect(a).not_to eql(3)
      expect(b).not_to eql(3.0)
      expect(a).not_to eql(b)

      expect(a).to eql(3.0)
      expect(b).to eql(3)
    end
  end

  describe 'equal and be matcher' do
    let(:c) { [1, 2, 3] }
    let(:d) { [1, 2, 3] }
    let(:e) { c }
    let(:z) { 1 }
    let(:y) { 1 }

    it 'cares about object identity' do
      expect(c).to eq(d) # value equality
      expect(c).to eql(d) # value & type equality

      expect(c).to equal(e) # same object
      expect(c).to be(e) # alias for equal

      expect(c).not_to equal(d) # different objects
      expect(c).not_to equal([1, 2, 3]) # different objects
      expect(c).not_to be(d) # alias for equal
    end
  end
end