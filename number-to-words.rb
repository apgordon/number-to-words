print "Enter a number: "
n = gets.chomp
digits_count = n.length
digits = n.split("")
n = n.to_i
puts "----"
puts "n: #{n}"
puts "digits_count: #{digits_count}."
puts "digits: #{digits}"
puts "n's class: #{n.class}"
puts "digits_count's class: #{digits_count.class}"
puts "digits' class: #{digits.class}"
puts "----"

ones = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
teens = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
tens = ["", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
hundreds = ["", "one hundred", "two hundred", "three hundred", "four hundred", "five hundred", "six hundred"]


if digits_count == 0 
	puts "Bummer - you didn't enter anything."

elsif digits_count == 1 
	puts ones[digits[-1].to_i]

elsif digits_count == 2 && n < 20
	puts teens[digits[-1].to_i]

elsif digits_count == 2 && n == 20
	puts tens[digits[-2].to_i]

#greater than 20, not a multiple of 10
elsif digits_count == 2 && n > 20 && digits[-1].to_i != 0
	puts tens[digits[-2].to_i] + '-' + ones[digits[1].to_i]

#greater than 20, less than 100, multiple of 10
elsif digits_count == 2 && n > 20 && digits[-1].to_i == 0
		puts tens[digits[-2].to_i]

#multiples of 100
elsif digits_count == 3 && digits[-1].to_i == 0 && digits[-2].to_i == 0
	puts hundreds[digits[0].to_i]

#3 digits, less than 10
elsif digits_count == 3 && digits[1].to_i == 0 && digits[0].to_i != 0
	puts hundreds[digits[0].to_i] + ' and ' + ones[digits[2].to_i]

elsif digits_count == 3 && digits[-2].to_i == 1
	puts hundreds[digits[-3].to_i] + ' ' + teens[digits[-1].to_i]

else
	puts "I don't know how to process."
end
