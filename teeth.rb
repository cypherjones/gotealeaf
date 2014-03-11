puts 'Ok, so... let\'s talk about your teeth, ok?'
puts 'Ok or No'
reply1 = gets.chomp
# A good response
if reply1 == 'ok'
  puts 'Good, so let\'s talk about your teeth then. Did you brush them today?'
  brush_reply1 = gets.chomp
  if brush_reply1 == 'yes'
    puts 'Wonderful! Seems like you\'re taking care of yourself!'
    puts 'Let\'s talk again soon..."'
  else 
    puts 'What?!'
    puts 'Don\'t you know that you\'re suppose to take care of yourself?'
    reply4 = gets.chomp
    if reply4 == 'yes'
      puts 'Good. It looks like we\'re on the same page.'
      puts ''
      puts 'Well, what are you waiting for? Go brush your teeth and the come back and let me know you got it all done.'
      puts 'Back?'
      back = gets.chomp
      if back == 'yes'
        puts 'Good.'
        puts 'Did you do it?'
        puts 'yes or no'
        brush_reply2 = gets.chomp
        if brush_reply2 == 'yes'
          puts 'Wonderful! Seems like you\'re taking care of yourself!'
          puts 'Let\'s talk again soon..."'
        else
          puts 'Well, seems like you\'re not going to comply. Maybe we should talk later, what do you think? Ok?'
          reply3 = gets.chomp
          if reply3 == 'ok'
            puts 'Good, let\'s do that.'
          else
            puts 'Well, I don\'t to talk about this all day. Good day.'
          end
        end
      else
        puts 'Well, you\'re suppose to take care of yourself'
        puts ''
        puts 'Well, what are you waiting for? Go brush your teeth and the come back and let me know you got it all done.'
        puts 'Back?'
        puts 'Did you do it?'
        brush_reply2 = gets.chomp
        if brush_reply2 == 'yes'
          puts 'Wonderful! Seems like you\'re taking care of yourself!'
          puts 'Let\'s talk again soon...Good bye.'
        else
          puts 'Maybe we should talk later, what do you think?'
          reply3 = gets.chomp
          if reply3 == 'ok'
            puts 'Good, let\'s do that.'
          else
            puts 'Well, I don\'t to talk about this all day.'
          end
        end
      end
    else
      puts 'Looks like we need to do a lesson "taking care of yourself".'
      puts 'Put that on the agenda for tomorrow. Good day.'
    end
  end
else
  # bad response
  puts 'What do you mean ' + '"' + reply1.capitalize + '"' + ' Are you being disrespectful?'
  reply2 = gets.chomp
  # a good response
  if reply2 == 'no'
    puts 'Good, so let\'s talk about your teeth then. Did you brush them today?'
    brush_reply1 = gets.chomp
    if brush_reply1 == 'yes'
      puts 'Wonderful! Seems like you\'re taking care of yourself!'
      puts 'Let\'s talk again soon..."'
    else 
      puts 'What?!'
      puts 'Don\'t you know that you\'re suppose to take care of yourself?'
      reply4 = gets.chomp
      if reply4 == 'yes'
        puts 'Good. It looks like we\'re on the same page.'
        puts ''
        puts 'Well, what are you waiting for? Go brush your teeth and the come back and let me know you got it all done.'
        puts 'Back?'
        back = gets.chomp
        if back == 'yes'
          puts 'Good.'
          puts 'Did you do it?'
          puts 'yes or no'
          brush_reply2 = gets.chomp
          if brush_reply2 == 'yes'
            puts 'Wonderful! Seems like you\'re taking care of yourself!'
            puts 'Let\'s talk again soon..."'
          else
            puts 'Well, seems like you\'re not going to comply. Maybe we should talk later, what do you think? Ok?'
            reply3 = gets.chomp
            if reply3 == 'ok'
              puts 'Good, let\'s do that.'
            else
              puts 'Well, I don\'t to talk about this all day. Good day.'
            end
          end
        else
          puts 'Well, you\'re suppose to take care of yourself'
          puts ''
          puts 'Well, what are you waiting for? Go brush your teeth and the come back and let me know you got it all done.'
          puts 'Back?'
          puts 'Did you do it?'
          brush_reply2 = gets.chomp
          if brush_reply2 == 'yes'
            puts 'Wonderful! Seems like you\'re taking care of yourself!'
            puts 'Let\'s talk again soon...Good bye.'
          else
            puts 'Maybe we should talk later, what do you think?'
            reply3 = gets.chomp
            if reply3 == 'ok'
              puts 'Good, let\'s do that.'
            else
              puts 'Well, I don\'t to talk about this all day.'
            end
          end
        end
      else
        puts 'Well, you\'re suppose to take care of yourself'
        puts ''
        puts 'Well, what are you waiting for? Go brush your teeth and the come back and let me know you got it all done.'
        puts 'Back?'
        puts 'Did you do it?'
        brush_reply2 = gets.chomp
        if brush_reply2 == 'yes'
          puts 'Wonderful! Seems like you\'re taking care of yourself!'
          puts 'Let\'s talk again soon...Good bye.'
        else
          puts 'Maybe we should talk later, what do you think?'
          reply3 = gets.chomp
          if reply3 == 'ok'
            puts 'Good, let\'s do that.'
          else
            puts 'Well, I don\'t to talk about this all day.'
          end 
        end
      end
    end 
  else
    #a bad response
    puts 'It\'s not ok to be disrespectful? Maybe we should talk later, what do you think?'
    reply3 = gets.chomp
    if reply3 == 'ok'
      puts 'Good, let\'s do that.'
    else
      puts 'Well, I don\'t to talk about this all day.'
    end

  end
end