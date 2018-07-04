require './lib/card'

class Deck

  attr_reader   :cards

  def initialize(cards)
    @cards = cards
  end

  def count
    @cards.count
  end

  def sort
    return @cards if @cards.size <= 1
    (count - 1).times do |i|
      if @cards[i].card_abs_value > @cards[i + 1].card_abs_value
        @cards[i], @cards[i + 1] = @cards[i + 1], @cards[i]
      end
    end
    @cards
  end

end
