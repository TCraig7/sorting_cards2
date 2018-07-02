require './lib/card'

class Deck

  attr_reader   :cards

  def initialize(cards)
    @cards = cards
  end

  def count
    @cards.count
  end

  def converted_value
    @cards.map do |card|
      @card_values[card.value]
    end
    @cards
  end

  def converted_suit
    @cards.map do |card|
      @card_values[card.suit]
    end
    @cards
  end

  def bubble_sort
    return @cards if @cards.size <= 1
    swap = true
      while swap
        swap = false
        (count - 1).times do |card|
          if @cards[card] > @cards[card+ 1]
            @cards[card], @cards[card + 1] = @cards[card + 1], @cards[card]
            swap = true
          end
        end
      end
    @cards
  end

  def insertion_sort
    (@cards.length).times do |i|
      while i > 0
        if @cards[i - 1] > @cards[i]
          @cards[i], @cards[i - 1] = @cards[i - 1], @cards[i]
        else
          break
        end
        i -= 1
      end
    end
    @cards
  end

  def merge_sort

  end
end
