<<<<<<< HEAD
class Card
    include Comparable
    attr_accessor :suit, :rank
    def initialize(suit, rank)
        @suit=suit
        @rank=rank
    end
    
    def face_card?
        # Is the card a face card (above 10)?
        @rank>10 ? true : false
    end 
    
    def to_s
        # Return human readable card
        case
        when @rank==1
            @string="Ace of #{@suit.to_s.capitalize}"
        when @rank<=10
            @string="#{@rank.to_i} of #{@suit.to_s.capitalize}"
        when @rank==11
            @string="Jack of #{@suit.to_s.capitalize}"
        when @rank==12
            @string="Queen of #{@suit.to_s.capitalize}"
        when @rank==13
            @string="King of #{@suit.to_s.capitalize}"
        end
    end
     def <=>(other)
        @rank<=>other.rank
     end

end

    
=======
 class Card
  include Comparable
  
  attr_accessor :suit, :rank, :rank_names 
  
  def initialize(suit, rank)
    # Create a new card
    @suit = suit
    @rank = rank
    @rank_names = {
      '1': 'Ace',
      '11': 'Jack',
      '12': 'Queen',
      '13': 'King'
    }    
  end

  def face_card?
    # Is the card a face card (above 10)?
    @rank > 10
  end

  def <=>(other)
    @rank <=> other.rank
  end
  
  def to_s
    # Return human readable card
    rank = @rank_names[@rank.to_s.to_sym] || @rank.to_s
    suit = @suit.to_s
    suit[0] = suit[0].upcase
    "#{rank} of #{suit}"
  end
end
>>>>>>> d785f49315f21edd5329234273e9431f9c199eea
