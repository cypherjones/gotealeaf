class Dragon

  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly     = 10 # He's full. puts "#{@name} is born."
    @stuff_in_intestine = 0 # He doesn't need to go.

    puts "#{@name} is born."
  end
  
  def feed
    puts "You feed #{@name}"
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "You walk #{@name}."
    @stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts "You put #{@name} to bed."
    @asleep = true
    1.times do 
      if @asleep
        passage_of_time
      end
      if @asleep
        puts "#{@name} seems to snore a lot. It's getting smokey."
      end
    end
    if @asleep 
      @asleep = false
      puts "#{@name} wakes up slowly."
    end
  end
  
  def toss
    puts "You toss #{@name} up into the air"
    puts 'He laughes...now you get to draw on your eyebrows.'
    passage_of_time
  end

  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts 'He briefly dozes off...'
    passage_of_time
    if @asleep
      @asleep = false
      puts '...but wakes up when you stop rocking.'
    end
  end

  private

  def hungry?
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestine >= 8
  end

  def passage_of_time
    if @stuff_in_belly > 0
      @stuff_in_belly     = @stuff_in_belly     - 1
      @stuff_in_intestine = @stuff_in_intestine + 1
    else
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#{@name} is starving! He ate...(we hear chomping sounds)"
      puts "..............."
      exit
    end
    
    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whoops! #{@name} had an accident..."
    end

    if hungry?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#{@name} does the potty dance..."
    end
  end

end

puts 'Do you have a name in mind for your little dragon?'
name = gets.chomp
pet  = Dragon.new name

while true
  puts
  puts 'Command your dragon by using: feed, toss, walke, rock, put to bed, exit'
  command = gets.chomp

  if command == 'exit'
    exit
  elsif command == 'feed'
    pet.feed
  elsif command == 'toss'
    pet.toss
  elsif command == 'walk'
    pet.walk
  elsif command == 'rock'
    pet.rock
  elsif command == 'put to bed'
    pet.put_to_bed
  else
    puts "What's that? Use one of the commands I showed you."
  end
end    