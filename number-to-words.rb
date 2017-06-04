# print "Enter a number: "
# n = gets.chomp
# puts "----"
# puts "Your number has #{n.length} digits."

ones = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
teens = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
tens = ["", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

puts ones[0]
puts teens[0]
puts tens[3] + '-' + ones[3]
puts tens[8] + '-' + ones[9]


# n.each_char { |c| 
# 	if c == '1'
# 		print 'one '
# 	elsif c == '2'
# 		print 'two '
# 	elsif c == '3' 
# 		print 'three '
# 	elsif c == '4'
# 		print 'four '
# 	elsif c == '5'
# 		print 'five '
# 	elsif c == '6'
# 		print 'six '
# 	elsif c == '7'
# 		print 'seven '
# 	elsif c == '8'
# 		print 'eight '
# 	elsif c == '9'
# 		print 'nine '
# 	elsif c == '0'
# 		print 'zero '	
# 	end
# }