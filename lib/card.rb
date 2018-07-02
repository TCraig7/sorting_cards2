class Card

  attr_reader   :value,
                :suit,
                :abs_value

  def initialize(value, suit)
    @value = value
    @suit = suit
    @card_value_int = 0
    @card_suit_int = 0
  end

  def card_values
    card_values = {
      "2" => 2,
      "3" => 3,
      "4" => 4,
      "5" => 5,
      "6" => 6,
      "7" => 7,
      "8" => 8,
      "9" => 9,
      "10" => 10,
      "Jack" => 11,
      "Queen" => 12,
      "King" => 13,
      "Ace" => 14,
      "Clubs" => 100,
      "Diamonds" => 200,
      "Hearts" => 300,
      "Spades" => 400
      }
  end

end
