# frozen_string_literal: true

RSpec.describe 'satisfy matcher' do
  context 'valid' do
    subject { 'racecar' }

    it 'is a a plindrome' do
      expect(subject).to satisfy { |value| value == value.reverse }
    end
  end

  context 'invalid' do
    subject { 'racecars' }

    it 'is a a plindrome' do
      expect(subject).to satisfy { |value| value == value.reverse }
    end

    it 'can expect a custom error message' do
      expect(subject).to satisfy('be a palindrome') { |value| value == value.reverse }
    end
  end
end