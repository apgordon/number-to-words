print "Enter a number: "
n = gets.chomp
digits = n.to_s.length
n = n.to_i
puts "----"
puts "Digits: #{digits}."
puts "----"

ones = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
teens = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
tens = ["", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

if digits == 0 
	puts "Bummer - you didn't enter anything."
elsif digits == 1 
	puts ones[n]
 else
	puts "I don't know how to process."
end
