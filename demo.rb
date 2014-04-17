require 'pry'

def say msg
	puts "=> #{msg} "
end

def push_result outcome
	puts "Your result is #{outcome}"
end

def options
	say "1) Add, 2) Subtract, 3) Multiply, 4) Divide "
end

say "What's the first number?"
num1 = gets.chomp

say "What's the second number?"
num2 = gets.chomp

options
operator = gets.chomp

if operator == "1"
	result = num1.to_i + num2.to_i
	push_result(result)
elsif operator == "2"
	result = num1.to_i - num2.to_i
	push_result(result)
elsif operator == "3"
	result = num1.to_i * num2.to_i
	push_result(result)
elsif operator == "4"
	result = num1.to_f / num2.to_f
	push_result(result)
else
	puts "Please try again"
	options
end	
	
