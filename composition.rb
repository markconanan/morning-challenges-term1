class HardDrive
end

class Computer < HardDrive
end

# inheritance = is-a relationship

# X is a Y

# Computer is a hard drive - doesnt make sense

# Computer has a HardDrive - does make sense! - Composition!

class Engine
    def initialize()
end

class Car
    def initialize(engine)
        @engine = engine
    end

end

car1 = Car.new(Engine.new)