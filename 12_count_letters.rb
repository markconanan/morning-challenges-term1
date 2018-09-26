# Count Letters
#
# Write a method that will take a string, keep count
# of each letter and return the totals as a hash.
#
# Difficulty:
# 5/10
#
# Example:
# count_letters("hello") should return {"h"=>1, "e"=>1, "l"=>2, o=>1}
# count_letters("abcba") should return {"a"=>2, "b"=>2, "c"=>1}
#
# Check your solution by running the tests:
# ruby tests/05_count_letters_test.rb
#

def count_letters (string)
  result = {} # You'll need an empty hash to get started!
<<<<<<< HEAD
#   array=string.chars
#   array.each do |letter|
#   if result.has_key?("#{letter}")
#     result["#{letter}"]+=1
#   else
#     result["#{letter}"]=1
#   end
# end
#   # Your code here
#   return result # return the hash
for char in string.chars do
  #evaluates this expression but if nil then 0
  result[char] = 1 + (result[char] || 0)
end
return result
end

count_letters("hello")
=======
  
  # Your code here
  for char in string.chars do
    result[char] = 1 + (result[char] || 0)
    # if result[char]
    #   result[char] += 1
    # else
    #   result[char] = 1
    # end
  end

  result # return the hash
end
>>>>>>> b028df5d644e116007105a13b9522c8e1282f993
