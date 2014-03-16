system('clear')
poss_resp = ['Are you sure?','C\'mon','You know you want to...','Don\'t be a bum!']
while true
	puts "Want to play a game?"
	game = gets.chomp
	if game == "yes" || game == "ok"
		break
	else
		system('clear')
		puts poss_resp[rand(4)].upcase
	end
end
system('clear')
puts "Ok, great!"
puts "The game is called"
puts ""
puts '"dad,..when he\'s grumpy"'.center(50).upcase
puts ""
poss_resp2 = ['The game is primed and ready!','Would you rather play something else?',
  'I know we can\'t compete with the PS4, but we cant try!']
while true
	puts "Ready to play?"
	input2 = gets.chomp
	if input2 == "yes"
		break
	else
		system('clear')
		puts poss_resp2[rand(3)].upcase
	end
end
system('clear')
names = ['abel','seth','simon','noah']
puts "One of the kids asks dad a question while he's on his computer."
while true
	puts "You know how this goes, right?"
	puts "Right?"
	input3 = gets.chomp
	if input3 == "right"
		break
	else
		system('clear')
		puts 'Just type "right"...'
	end
end
system('clear')
puts "Go ahead, you type in something one of the kids would say."
request = gets.chomp
puts "Then Dad says something like..."
puts ""
puts "#{names[rand(4)].upcase} did you say, '#{request}'"
puts "And then you say,...Dad, that's not my name. I'm #{names[rand(4)].upcase}"
puts ''
while true
	puts "Ok, bye"
	leave = gets.chomp
	if leave == 'bye'
		break
	end
end