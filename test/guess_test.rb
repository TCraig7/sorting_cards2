require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/guess'

class GuessTest < Minitest::Test

  def test_it_exists
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert_instance_of Guess, guess
  end

  def test_it_has_attributes
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert_equal card, guess.card
    assert_equal "10 of Hearts", guess.response
  end

  def test_response_is_true_for_correct_card
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert_equal true, guess.correct?
  end

  def test_response_is_false_for_incorrect_card
    card = Card.new("Queen", "Clubs")
    guess = Guess.new("2 of Diamonds", card)

    assert_equal false, guess.correct?
  end

  def test_it_can_give_feedback_for_correct_card
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert_equal "Correct!", guess.feedback
  end

  def test_it_can_give_feedback_for_incorrect_card
    card = Card.new("Queen", "Clubs")
    guess = Guess.new("2 of Diamonds", card)

    assert_equal "Incorrect.", guess.feedback
  end
end
