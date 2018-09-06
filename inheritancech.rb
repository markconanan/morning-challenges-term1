class Vehicle
    attr_accessor :litres, :fuel_level, :make, :model
    def initialize(make,model)
        @make=make
        @model=model
        @fuel_level=0
    end
    def refuel(litres)
        @litres=litres
        if @fuel_level+@litres>50
            puts "Fuel level exceeded, refuel cancelled"
        else
            @fuel_level+@litres<50
            @fuel_level+=@litres
        end
        return @fuel_level
    end
    def fuel_level
        puts"#{@fuel_level}L in the tank of #{@make} #{model}"
    end

end

class Car < Vehicle
    def wind_up
        puts "#{@make} #{model} wind up bye"
    end
end

class Motorbike < Vehicle
    def wheelie
        puts "#{@make} #{model} makes a wheelie!"
    end
    def refuel(litres)
        @litres=litres
        if @fuel_level+@litres>15
            puts "Fuel level exceeded, refuel cancelled"
        else
            @fuel_level+@litres<15
            @fuel_level+=@litres
        end
        return @fuel_level
    end
    # def fuel_level
    #     super
    #     puts"Yeah"
    # end
end

car1 = Car.new("Honda","Civic")
car1.wind_up
car1.refuel(10)
car1.refuel(50)
car1.refuel(30)
car1.fuel_level

bike1 = Motorbike.new("Bike","Suzuki")
bike1.wheelie
bike1.refuel(10)
bike1.refuel(10)
bike1.fuel_level



