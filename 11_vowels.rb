# Vowels
#
# Write a method that will take a string and
# return an array of vowels used in that string.
#
# Difficulty:
# 4/10
#
# Example:
# count_vowels("The quick brown fox") should return ["e","u","i","o","o"]
# count_vowels("Hello World") should return ["e","o","o"]
#
# Check your solution by running the tests:
# ruby tests/04_vowels_test.rb
#

# def vowels (string)
#   array=string.chars
#   vowels=["a","e","i","o","u"]
#   includedvowels=[]
#   array.each do |letters|
#   if vowels.include?(letters)
#     includedvowels.push(letters)
#   end
# end
# puts "#{includedvowels}"
# end



# using regex
def vowels (string)
  vowels=string.scan(/[aeiou]/i)
  puts vowels
end

vowels("a b c d e f g h i j k")