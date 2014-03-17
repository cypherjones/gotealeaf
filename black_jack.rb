#say hello
def calculate_total(cards)
  cal = cards.map{|e| e[1] }

  total = 0
  cal.each do |value|

  if value == 'Ace'
    total += 11
  elsif value.to_i == 0
    total += 10
  else
    total += value.to_i
    end
  end

# Remember the aces
  
  cal.select{|e| e == 'Ace'}.count.times do
    total -= 10 if total > 21
  end

  total
end

system('clear')

puts "It's time to play Blackjack, Jack!"
puts 
puts "I'll deal."

sleep(2)
system('clear')
#set up the deck
suits = ['Spades', 'Diamonds', 'Hearts', 'Clubs']
cards = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'King', 'Queen', 'Jack', 'Ace']

deck = suits.product(cards)
deck.shuffle!
deck.pop

#deal the cards to the player and dealer

playercards = []
dealercards = []

playercards << deck.pop
dealercards << deck.pop
playercards << deck.pop
dealercards << deck.pop

playertotal = calculate_total(playercards)
dealertotal = calculate_total(dealercards)

#decide whether to hit (h) or stay (s) the cards delt
puts "Ok, let's take a look at the cards."
system('clear')
puts "You have #{playercards[0]} and #{playercards[1]} for a total of #{playertotal}." 
puts "The dealer has #{dealercards[0]} and #{dealercards[1]} for a total of #{dealertotal}"

if playertotal == 21
  puts "You win!"
  exit
end

if dealertotal == 21
  puts "Ah man, looks like the house wins. Better luck next time."
  exit
end

# Players Turn
while playertotal < 21
  puts "What would you like to do?"
  puts
  puts 'Hit or Stay? "h") for hit or "s") for stay?'
  hit_or_stay = gets.chomp
  system('clear')
  
  if !['h','s'].include?(hit_or_stay)
    puts "Error: you must enter h or s" 
    next
  end

  if hit_or_stay == 's'
    puts "Stay it is."
    sleep(1)
    system('clear')
    break
  end

  hit_or_stay == 'h'
  new_card = deck.pop
  playercards << new_card
  puts "Here is your new card: #{new_card}"
  playertotal = calculate_total(playercards)
  puts "Now you have #{playertotal}"
  

  if playertotal == 21
    puts "Nice! You win! You hit Blackjack!"
    exit
  end

  if playertotal > 21
    puts "Ah, man... you busted."
    exit
  end

end


# Dealers turn
while dealertotal <= 17

  new_card = deck.pop
  dealercards << new_card
  puts "The house has #{new_card}"
  dealertotal = calculate_total(dealercards)
  puts "Now the house has #{dealertotal}"

  if dealertotal < 21 && dealertotal > 17
    puts "Looks like the house is going to stay."
    system('clear')
    break
  end

  if dealertotal == 21
    puts "Damn! The house wins."
    exit
  end

  if dealertotal > 21
    puts "Yes! ... the house busted. You win!"
    exit
  end

end

# Who wins / compare hands


puts "Let's take a look at the hands."

sleep(1)

puts "Dealers cards "
dealercards.each do |card|
  puts "=> #{card}"
end
puts
puts "For a total of #{dealertotal}"
puts
puts "Players cards "
playercards.each do |card|
  puts "=> #{card}"
end
puts
puts "For a total of #{playertotal}"
puts

if dealertotal > playertotal
  puts "Damn, the house wins. Better luck next time."
  exit
elsif dealertotal < playertotal
  puts "Nicely done!. You beat the house! Keep it up."
else
  puts "Stink, it's a tie."
end
exit


