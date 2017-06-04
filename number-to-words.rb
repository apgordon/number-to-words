print "Enter a number: "
n = gets.chomp
digits_count = n.to_s.length
n = n.to_i
puts "----"
puts "digits_count: #{digits_count}."
puts "----"

ones = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
teens = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
tens = ["", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

digits = n.to_s.split("")

if digits_count == 0 
	puts "Bummer - you didn't enter anything."
elsif digits_count == 1 
	puts ones[n]
elsif digits_count == 2 && n < 20
	puts teens[digits.last.to_i]
elsif digits_count == 2 && n == 20
	puts tens[2]
elsif digits_count == 2 && n > 20 && digits.last.to_i != 0
	puts tens[digits.first.to_i] + '-' + ones[digits.last.to_i]
elsif digits_count == 2 && n > 20 && digits.last.to_i == 0
		puts tens[digits.first.to_i]
else
	puts "I don't know how to process."
end
