def log logger, &loggest
  puts "Give me a break, I just started #{logger.inspect}...chill"
  result = loggest[]
  puts "...#{logger.inspect} is all done, dudeski, returning: #{result}"
end

log 'outer_block' do
  log 'some little block' do
    1**1 + 2**2
  end

 log 'eh, one more block' do
  'poop'.reverse
  end

  '0' == 0

end