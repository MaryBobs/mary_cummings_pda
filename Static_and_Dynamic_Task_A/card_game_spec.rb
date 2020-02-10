require("minitest/autorun")
require("minitest/rg")
require_relative("card_game_edits.rb")
require_relative("card.rb")

class TestCardGame < MiniTest::Test

def setup
  @ace_of_clubs = Card.new("clubs", 1)
  @ace_of_diamonds = Card.new("diamonds", 1)
  @two_of_clubs = Card.new("clubs", 2)
  @ten_of_clubs = Card.new("clubs", 10)
  @queen_of_clubs = Card.new("clubs", 12)

  @cards = [@ace_of_clubs, @ace_of_diamonds, @two_of_clubs, @ten_of_clubs, @queen_of_clubs]
  @game = CardGame.new(@cards)
end


def test_checkforAce()
  card = @ace_of_clubs
  assert_equal(true, @game.check_for_ace(card))
end

def test_checkforAce_not()
  card = @two_of_clubs
  assert_equal(false, @game.check_for_ace(card))
end

def test_canFindHighestCardwhenItIsCard1()
  card1 = @queen_of_clubs
  card2 = @two_of_clubs
  assert_equal(card1, @game.highest_card(card1, card2))
end

def test_canFindHighestCardwhenItIsCard2()
  card1 = @ace_of_diamonds
  card2 = @ten_of_clubs
  assert_equal(card2, @game.highest_card(card1, card2))
end

end
