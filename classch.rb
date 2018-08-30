class Dog
    attr_accessor :name, :age, :location, :walk, :distance, :total_distance, :allwalks
    def initialize(name,age,location)
        @name=name
        @age=age
        @location=location
        @walk=0
        @total_distance=[]
        @allwalks=[]
    end
    def speak
        puts "#{@name} says woof!"
    end
    def walk(loc,distance)
        @loc=loc
        @distance=distance
        @time=Time.now.strftime("%d/%m %H:%M")
        # @walk=+1
        # self
        @total_distance.push(@distance)
        @allwalks.push("#{@name} went to #{@loc} and walked for #{@distance} km on this date and time #{@time}")
    end
    def total_distance
        puts @total_distance.sum
    end
    def print
        puts "#{@name} went to #{@loc} and walked for #{@distance} km on this date and time #{@time}"
    end
    def allwalks
        puts @allwalks
    end
end

doge=Dog.new("Doge", 29, "Brisbane")
# doge.walk
# doge.walk.walk.walk
doge.walk("Perth",20)
doge.walk("Bris",30)

doge.allwalks
doge.print
doge.total_distance




