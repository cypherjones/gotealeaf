$OPT_ON  = true

def profile block_dealie, &block
  if $OPT_ON  
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_dealie}: #{duration} seconds"
  else
    block.call
  end
end

profile 'count some more little thingies' do
  number = 0
  2000000.times do
    number = number + 1
  end
end

