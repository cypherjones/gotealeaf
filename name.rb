puts 'Hi there.'
puts 'What is your first name?'
first_name = gets.chomp
puts 'And what is your middle name?'
middle_name = gets.chomp
puts 'And your last name?'
last_name = gets.chomp
puts 'Did you know that there are ' + (first_name.length.to_i + middle_name.length.to_i + last_name.length.to_i).to_s + ' characters in your full name?'
puts 'Go ahead,... count them'
puts first_name.upcase + ' ' + middle_name.upcase + ' ' + last_name.upcase