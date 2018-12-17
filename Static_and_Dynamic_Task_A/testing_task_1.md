### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.

### Testing task 2 code:

# Carry out dynamic testing on the code below.
# Correct the errors below that you spotted in task 1.

require_relative('card.rb')
class CardGame

#we haven't created card deck to play with?

  def checkforAce(card)
    if card.value = 1 #missing second =
      return true
    else
      return false
    end
  end

  def highest_card(card1, card2) #dif should be def
  if card1.value > card2.value
    return card.name #should be card1 and we de don't have name just suit and value
  else
    card2 #based on line 25 should be card2 and should be more specific about parts of card2 ie suit
  end
end


def self.cards_total(cards) #don't think it needs to be class method
  total #variable but not defined ie total=0
  for card in cards
    total += card.value
    return "You have a total of" + total #should be outside the loop, swap with line 38 also should use interpolation for string
  end
#end needs to be down here

```
