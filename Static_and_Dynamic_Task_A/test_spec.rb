require('Minitest/autorun')
require('Minitest/rg')

require_relative('./testing_task_2')
require_relative('./card')


require('pry')

class CardGameTest < Minitest::Test
  def setup
    @card1 = Card.new("Spades", 1)
    @card2 = Card.new("hearts", 5)
    @cards = [@card1, @card2]
    @game = CardGame.new(@cards)

  end

  def test_check_for_ace__true
    result = @game.checkforAce(@card1)
    assert_equal(true, result)
  end

  def test_check_for_ace__false
    result = @game.checkforAce(@card2)
    assert_equal(false, result)
  end

  def test_highest_card__true
    result = @game.highest_card(@card1,@card2)
    assert_equal("hearts", result)
  end

  def test_highest_card__false
    result = @game.highest_card(@card2,@card1)
    assert_equal("hearts", result)
  end

  def test_total
    result = @game.cards_total(@cards)
    assert_equal("You have a total of 6", result)
  end
end
