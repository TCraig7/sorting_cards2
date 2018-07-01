class Deck

  attr_reader   :cards

  def initialize(cards)
    @cards = cards
  end

  def count
    @cards.count
  end

  def sort(deck)
    return deck if deck.size <= 1
    swap = true
      while swap
        swap = false
        (deck.length - 1).times do |card|
          if deck[card] > deck[card + 1]
            deck[card], deck[card + 1] = deck[card + 1], deck[card]
            swap = true
          end
        end
      end
    deck
  end
end
