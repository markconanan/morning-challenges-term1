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

    