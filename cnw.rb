puts 'What?'
#First Response
fir_respns = gets.chomp
puts 'What do you mean ' + '"' + fir_respns + '"'
puts 'Are you kidding?'
#Second Response
sec_respns = gets.chomp
puts 'You know what,... you can take that ' + '"' + sec_respns + '"' + ' and shove it.'
puts 'I mean, you can\'t be serious.'
#Third Response
thir_respns = gets.chomp
puts '"' + thir_respns + '", C\'mon! Do you want to get my wrath?'
#Fourth Responsd
frth_respns = gets.chomp
puts 'All you have said so far is...' 

words_width = 40

puts ('---> all your silly responses <---'.ljust(words_width)).upcase
puts ('take a good look'.center(words_width))
puts ('the first thing you said'.ljust(words_width/2).upcase + fir_respns.rjust(words_width/2))
puts ('the second thing you said'.ljust(words_width/3).upcase + sec_respns.rjust(words_width/3))