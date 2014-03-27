def grand_daddy &grand
  hour = (Time.new.hour + 11)%12 + 1

  hour.times(&grand)
end

grand_daddy { puts "It's a bingo!"}
