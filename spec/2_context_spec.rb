# frozen_string_literal: true

RSpec.describe "#even? method" do
  describe "with even number" do
    it 'should return true' do
      expect(4.even?).to eq(true)
    end
  end

  describe "with odd number" do
    it 'should return false' do
      expect(5.even?).to eq(false)
    end
  end

  context "with even number" do
    it 'should return true' do
      expect(4.even?).to eq(true)
    end
  end

  context "with odd number" do
    it 'should return false' do
      expect(5.even?).to eq(false)
    end
  end
end