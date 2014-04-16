require 'pry'

def say msg
	puts "=> #{msg} "
end

def push_result
	puts "Your result is #{$result}"
end

say "What's the first number?"
num1 = gets.chomp

say "What's the second number?"
num2 = gets.chomp

say "1) Add, 2) Subtract, 3) Multiply, 4) Divide "
operator = gets.chomp

if operator == "1"
	$result = num1.to_i + num2.to_i
	push_result
elsif operator == "2"
	result = num1.to_i - num2.to_i
	puts "Your result is #{result}"
elsif operator == "3"
	result = num1.to_i * num2.to_i
	puts "Your result is #{result}"
elsif operator == "4"
	result = num1.to_f / num2.to_f
	puts "Your result is #{result}"
else
	puts "Please try again"
	say	"1) Add, 2) Subtract, 3) Multiply, 4) Divide "
end	
	
