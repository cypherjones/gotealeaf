
require 'pry'

def jack_says(msg)
  puts "=> #{msg}"
end

jack_says "What's the first number?"
num1 = gets.chomp

jack_says "What's the second number?"
num2 = gets.chomp

jack_says "1) add 2) subtract 3) multiply 4) divide"
operator = gets.chomp

if operator == '1'
  result = num1.to_i + num2.to_i
elsif operator == '2'
  result = num1.to_i - num2.to_i
elsif operator == '3'
  result = num1.to_i * num2.to_i
elsif operator == '4'
  result = num1.to_f / num2.to_f
end

jack_says "Result is #{result}"
    
    