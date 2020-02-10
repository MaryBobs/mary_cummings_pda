### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below. 
```ruby

class CardGame
  
#no def initialize?

  def checkforAce(card) #should be check_for_ace()
    if card.value = 1   #should be == not =
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2) #should be def #needs a , between card1 and card2
  if card1.value > card2.value
    return card                 #should be card1
  else
    return card2
  end
end
end                             #is an extra 'end'

def self.cards_total(cards)     #this won't work as there's no initialize so we can't pass in any parameters to CardGame
  total                         #should be total = 0
  for card in cards
    total += card.value
    return "You have a total of" + total  #needs string interpolation "You have a total of #{total}"
  end   #this end should move before the return line
end

#missing an end for the class   ##1
```
