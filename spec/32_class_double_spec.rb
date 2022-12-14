# frozen_string_literal: true

class CardGame
  attr_reader :cards

  def start
    @cards = Deck.build
  end
end

class Deck
  def self.build; end
end

RSpec.describe CardGame do
  it 'can only implement class methods that are defined on a class' do
    # as_stubbed_const - whenever Deck is called it will be replaced with this double
    deck_klass = class_double(Deck, build: ['Ace', 'Queen']).as_stubbed_const

    expect(deck_klass).to receive(:build)
    subject.start
    expect(subject.cards).to eq(['Ace', 'Queen'])
  end
end
