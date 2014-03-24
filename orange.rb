class OrangeTree
  def initialize
    @height       = 0
    @orange_count = 0
    @alive        = true
  end

  def height
    if @alive
      @height
    else
      'Dude, your tree is a gonner.'
    end
  end
  #Count the oranges on the tree
  def count_the_oranges
    if @alive
      @orange_count
    else
      "Ain't no trees here, guys."
    end
  end

  def one_year_goes_by
    if @alive
      @height = @height + 0.5
      @orange_count = 0

      if @height > 10 && rand(2) > 0
        @alive = false
        'Man, your tree has gone out to pasture.'
        elsif @height > 2
          @orange_count = (height * 10 - 15).to_i
          "Congrats! Your tree is #{@height}ft tall," + 
          " and now you have #{@orange_count} oranges."
        else
          "Hey, Kiddo, looking good. You're a big boy" +
          " now. You've grown to #{@height}ft. Sadly"  +
          "You're too young to grow anything."
        end
      else
          "Dude, your tree is still dead"
      end
    end
    def pick_an_orange
      if @alive
        if @orange_count > 0
          @orange_count = @orange_count - 1
          'How\'s that taste, huh. Pretty juicy.'
        else
          'Empty. Too young, maybe. Or alreay picked dry.'
        end
      else
        'Dude, really? Dead. Tree. No. Fruit.'
      end
    end
  end

ot = OrangeTree.new
30.times do  
  ot.one_year_goes_by
end

puts(ot.one_year_goes_by)
puts(ot.count_the_oranges)
puts(ot.height)
puts(ot.one_year_goes_by)
puts(ot.height)
puts(ot.one_year_goes_by)
puts(ot.one_year_goes_by)
puts(ot.count_the_oranges)
puts(ot.pick_an_orange)
puts(ot.count_the_oranges)
puts(ot.one_year_goes_by)
puts(ot.count_the_oranges)
puts(ot.one_year_goes_by)
