def total(cards)

	numbers = cards.map { |num| num[1] }
	
	total = 0
	numbers.each do |value|
		if value == "A"
			total += 11
		elsif value.to_i == 0
			total += 10
		else
			total += value.to_i
		end	
	end
	
	numbers.select{ |e| e == "A" }.count.times do
		total -= 10 if total > 21 
		end
	
	total
	
	
end

puts "Welcome to Blackjack!"

suits = ["D", "C", "H", "S"]
cards = ["2", "3", "4", "5", "6", "7", "8", "9", "10" "J", "Q", "K", "A",]

deck = suits.product(cards)
deck.shuffle!

# Deal cards

mycards = []
dealercards = []

mycards << deck.pop
dealercards << deck.pop
mycards << deck.pop
dealercards << deck.pop

mytotal = total(mycards)
dealertotal = total(dealercards)

puts "You have cards #{mycards[0]} and #{mycards[1]} and the total is #{mytotal}"
puts "Dealer has cards #{dealercards[0]} and #{dealercards[1]} and the total is #{dealertotal}"
puts ""

if mytotal == 21
	 puts "Congrats! You won!"
	 exit
end 

while mytotal < 21
	puts "What would you like to do? 1) Hit 2) Stay"
	hit_or_stay = gets.chomp

	if !["1", "2"].include?(hit_or_stay)
		puts "You need to choose 1 or 2"
		next
	end
	
	if hit_or_stay == "2"
		puts "You have chosen to stay"
		break
	end
	
	if hit_or_stay == "1"
		
		new_cards = deck.pop
		puts "Currently dealing your cards #{new_cards}"
		mycards << new_cards
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

#dealer

if dealertotal == 21
	puts "Dealer lose! Congrats, you win!"
	exit
end

while dealertotal < 17
	new_cards = deck.pop
	puts "Currently dealing dealers cards #{new_cards}"
	dealercards << new_cards
	dealertotal = total(dealercards)
	puts "Dealer's total is #{dealertotal}"
	
	if dealertotal == 21
	puts "Sorry, dealer wins, you lose!"
	break
	elsif dealertotal > 21
	puts "Congrats you win!"
	next
	end
end

#Compare

puts "Dealer's cards"
dealercards.each do |cards|
	puts "#{cards}"
end

puts "Your cards"
mycards.each do |cards|
	puts "#{cards}"
end

puts ""

if dealertotal > mytotal
	puts "Dealer wins"
elsif dealertotal < mytotal
	puts "You win"
else
	puts "It's a tie"
end

exit		








#I want to calculate the total number of cards
#Set the elements in the "elements" variable to an integer
#If the value of the a letter is == to 0 then + 10
#If the numbers include an "A" and the number is over 21 then -10
