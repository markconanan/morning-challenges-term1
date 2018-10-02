# Create a Deck class that uses the Card class you created last time.
#
# Deck functionality
# A deck has a public attribute:
#
# cards: array of remaining cards in the deck.
#
# ...and three public methods:
#
# count(): count of remaining cards in the deck.
#
# shuffle(): randomize the order of the remaining cards in the deck.
#
# draw(n): remove the last n cards from the deck and return them in an array.
#
# Upon initialization, a deck is filled with 52 cards (13 from each of 4 suits).

require_relative '24_card_game'

class Deck
  def initialize
    @deck=[]
    @number=0
    while number<14
      number+=1
      @deck.push(Card.new(:heart,@number))
      @deck.push(Card.new(:spade,@number))
      @deck.push(Card.new(:diamond,@number))
      @deck.push(Card.new(:clubs,@number))
    end
end
    
    def shuffle
      # Shuffle the remaining cards
      @deck.shuffle
    end
    
    def draw(n=1)
      # Draw (remove) n cards from the deck. Return those cards
      while n>0
        n-=1
        @draw=@deck.sample
    end
    
    def count
      # How many cards are left?
      @deck.count
    end
  end
  