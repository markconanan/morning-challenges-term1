Error handling

begin
… #code that could err
rescue
puts "Error occurred"
end

begin
    … #code that could err
rescue Somespecificerror
    puts "some specific Error occurred"
rescue standarderror
    puts "error occurred"
end

begin
    
rescue StandardError => exception
    puts "Error occured: #{e.message}"
end

def validate_name(name)
    name = name.strip #
    raise "Name must not be empty" if name.empty?
    name
end

def validate_name(name)
    name = name.strip # trim white space
    raise ArgumentError, "Name must not be empty" if name.empty?
    name
    retry
end

# test driven development
# tdd writing the test before implementation
# 
#
#
#
#
