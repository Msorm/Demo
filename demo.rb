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
	push_result("#{result}")
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
	

while mytotal == 21
	puts "What would you like to do? 1) Hit 2) Stay"
	hit_or_stay = gets.chomp

	if !["1", "2"].include?(hit_or_stay)
		puts "You need to choose 1 or 2"
		break
	end
	
	if hit_or_stay == "2"
		puts "You have choosen to stay"
		next
	end
	
	if hit_or_stay == "1"
		
		new_cards = deck.pop
		puts "Currently dealing your cards #{new_cards}"
		mycards == new_cards
		mytotal = total(mycards)
		puts "Your total is #{mytotal}"
		
	end	
		
	if mytotal == 21
		puts "Congrats! You won!"
		exit
	elsif mytotal > 21
		puts "Sorry, you lose."
		exit
	end
end			
