print "Enter a number: "
n = gets.chomp
digits_count = n.length
digits = n.split("")
n = n.to_i
# puts "----"
# puts "n: #{n}"
# puts "digits_count: #{digits_count}."
# puts "digits: #{digits}"
# puts "n's class: #{n.class}"
# puts "digits_count's class: #{digits_count.class}"
# puts "digits' class: #{digits.class}"
# puts "----"

ones = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
teens = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
tens = ["", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
hundreds = ["", "one-hundred", "two-hundred", "three-hundred"]


if digits_count == 0 
	puts "Bummer - you didn't enter anything."
elsif digits_count == 1 
	puts ones[digits[-1].to_i]
elsif digits_count == 2 && n < 20
	puts teens[digits[-1].to_i]
elsif digits_count == 2 && n == 20
	puts tens[digits[-2].to_i]
elsif digits_count == 2 && n > 20 && digits[-1].to_i != 0
	puts tens[digits[-2].to_i] + '-' + ones[digits[1].to_i]
elsif digits_count == 2 && n > 20 && digits[-1].to_i == 0
		puts tens[digits[-2].to_i]
elsif digits_count == 3 
	puts "3 digit number"
else
	puts "I don't know how to process."
end
