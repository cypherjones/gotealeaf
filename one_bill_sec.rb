today = Time.new
puts "Today is: #{Time.new}"

sleep(2)
system('clear')

puts "When were you born?"
bday = gets.chomp

bday = Time.local(bday).to_f

system('clear')

if (today - bday).to_f > 1000000000.0
  puts "You're over a billions seconds old!"
else
  bday_diff = 1000000000.0 - bday
  puts "Not to worry, it's only #{bday_diff} until you're
        a billion seconds old."
end
