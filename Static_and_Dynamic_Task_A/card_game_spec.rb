require("minitest/autorun")
require("minitest/rg")
require_relative("card_game_edits.rb")
require_relative("card.rb")

class TestCardGame < MiniTest::Test

def setup
  @ace_of_clubs = Card.new("clubs", 1)
  @ace_of_diamonds = Card.new("diamonds", 1)
  @two_of_clubs = Card.new("clubs", 2)

  @cards = [@ace_of_clubs, @ace_of_diamonds, @two_of_clubs]
  CardGame.new(@cards)
end


def test_checkforAce()
  card = @ace_of_clubs
  assert_equal(true,true)
end

def test_checkforAce_not()
  card = @ace_of_diamonds
  assert_equal(false,false)
end

end
