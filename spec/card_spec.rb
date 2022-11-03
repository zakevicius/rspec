# frozen_string_literal: true

class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do
  let(:card) { Card.new('Ace', 'Spades') }

  before do
    @card = Card.new('Ace', 'Spades')
  end

  it 'has a rank and that rank can change' do
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end

  it 'has a custom error message' do
    # card.suit = 'Nonsense'
    card.suit = 'Spades'
    comparison = 'Spades'
    expect(card.suit).to eq(comparison), "I expected #{comparison} but I got #{card.suit} instead"
  end
end
