# class Customer
#     def initialize(details)
#         @details=details
#     end
    
#     def print_customer_details
#         puts "Customer details:"
#         @details.each {|attr,val} puts "#{attr}: #{val}"}
#         puts "=" *15
#     end
# end
# pedro=Customer.new({"name":"Pedro"})


class Dog
   attr_accessor :name, :breed
    def initialize(dog_name,breed)
        @name=dog_name
        @breed=breed
        puts "Initialize running"
    end

    def speak
        puts "#{@name} says Woof!"
    end
    
    # #setter
    # def name=(value)
    #     @name=value
    # end
    
    # #getter
    def name
        return @name
    end
end

fido = Dog.new("Fido","Blue Heeler")
fido.name="Rover"
# fido.name="Fido"

lassie = Dog.new("Lassie", "Collier")
lassie.name="Lassie"

puts fido.class
puts lassie.class

puts fido.inspect
puts lassie.inspect
fido.speak
lassie.speak
puts fido.name
