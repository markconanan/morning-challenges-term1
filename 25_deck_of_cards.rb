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
#   attr_accessor :deck, :draw
#   def initialize
#     @deck=[]
#     @number=0
#     while @number<12
#       @number+=1
#       @deck.push(Card.new(:heart,@number))
#       @deck.push(Card.new(:spade,@number))
#       @deck.push(Card.new(:diamond,@number))
#       @deck.push(Card.new(:clubs,@number))
    attr_accessor :cards
    
    def initialize
        # Create a new array of cards
        @cards = []
        for suit in [:spades, :diamonds, :clubs, :hearts] do
            for rank in 1..13 do
                @cards << Card.new(suit, rank)
            end
        end
    end
    
    def shuffle
        # Shuffle the remaining cards
        @cards.shuffle!
    end
    
    def draw(n=1)
        # Draw (remove) n cards from the deck. Return those cards
        @cards.pop(n)
    end
    
    def count
        # How many cards are left?
        @cards.length
    end
end
    
#     def shuffle
#       # Shuffle the remaining cards
#       @deck.shuffle
#     end
    
#     def draw(n=1)
#       @cards=[]
#       @number=0
#       # Draw (remove) n cards from the deck. Return those cards
#       until @number==n
#       @number+=1
#       @cards.new(@deck.pop)
#       end
#       @cards
#     end
    
#     def count
#       # How many cards are left?
#       @deck.length
#     end
#   end
  