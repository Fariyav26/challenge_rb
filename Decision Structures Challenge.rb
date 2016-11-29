#Write a loop that prints from 1 to 20. Try it with all the loops covered in this lesson. Do it again counting down from 20 to 1.

x = 0
loop do
  x += 1
  puts x
  break if x == 20
end

x = 21
loop do
  x -= 1
  puts x
  break if x == 0
end

#Write a program which takes a number and prints "Valid" if the number is between 1 and 10 (inclusive) and "Invalid" otherwise.
x = 11
if x >= 1 && x <= 10
  puts "valid"
else
  puts "invalid"
end

#Write a program that prints the numbers from 1 to 100. But for multiples of three print Fizz instead of the number and for the multiples of five print Buzz. For numbers which are multiples of both three and five print FizzBuzz
def fizzbuzz
    x = 0
    while ( x<100) do
      x += 1
    if x % 3 && x % 5 == 0
      puts "FizzBuzz"
    elsif x % 3 == 0
      puts "Fizz"
    elsif x % 5 == 0
      puts "Buzz"
    else
      puts x
    end
  end
end

#Create a method called sum_these_numbers which takes two integers as an argument and prints their sum to the screen.
def sum_these_numbers(a, b)
  a + b
end
 #terminal: sum_these_numbers(2, 4) #=> 6

#Create a method called is_even, which takes a single integer, and which then returns true if the number is even, and false otherwise.
def is_even(a)
  if a % 2 == 0
    return true
  else
    return false
  end
end
>> is_even(5) #=> false
>> is_even(204) #=> true

#Create an array of words. Iterate through the array using .each and a block, then print each of those words in all capitals.
words =["California", "Dog", "Cup", "Cat"]
words.each() do |element|
  puts element.upcase
end
#=> ["California", "Dog", "Cup", "Cat"]
# CALIFORNIA
# DOG
# CUP
# CAT

#Write a method which calls another method, then uses its return value.
def hi
  puts "Hello World".upcase
end
#=> :hi
>> hi #=> nil
HELLO WORLD

#Write a function called valid_date that prompts the user for a date with a month, date, and year (all numerically expressed) and returns 'true' if this date exists and 'false' if it does not (for example: 7 28 2014 exists, but 22 34 1999 does not). Make sure to account for leap years. This program is easiest if you prompt for the month, date, and year separately.
def valid_date
  puts "what is your birth month (number format)"
  month = gets.chomp
  if month.length == 1
    month.prepend("0")
  end
  month = month.to_i
  puts "birth date"
  date = gets.to_i
  puts "birth year"
  year = gets.to_i
  if (month < 0 || date < 0 || year < 1940 || month > 12 || year > 2017 || date > 31 || (date > 30 && (month == 2 || month == 4 || month == 6 || month == 8 || month == 10)))
     return false
   else
     return true
   end
 end

 # Using if, elsif, and else blocks, write a function called rps_game which allows two users to input their moves in "Rock, Paper, Scissors" and which determines the winner (or if a tie occurred).
 def rps_game
   puts "Please enter a first move"
   user_1 = gets.chomp
   puts "Please enter a second move"
   user_2 = gets.chomp
   until (user_1 == "rock" || user_1 == "paper" || user_1 == "scissors")
     puts "Enter a new first move idiot"
     user_1 = gets.chomp
   end
   until (user_2 == "rock" || user_2 == "paper" || user_2 == "scissors")
     puts "Enter a new second move idiot"
     user_2 = gets.chomp
   end
   if (user_1 == user_2)
     return "tie"
   elsif (user_1 == "rock" && user_2 =="scissors" || user_1 == "paper" && user_2 =="rock" || user_1 == "scissors" && user_2 =="paper")
     return "user_1 wins!"
   else
     return "user_2 wins!"
   end
 end
 def pass_check
   creds = input_creds
   until creds[0] != creds[1] && creds[1].length > 6 && creds[0].length > 6 && creds[0] != "password" && (creds[0].include?("#") || creds[0].include?("!") || creds[0].include?("$")) && !(creds[1].include?("$") and creds[1].include?("!") and creds[1].include?("#"))
     puts "try again asshole"
     creds = input_creds
   end
     puts "good job buddy"
 end
 def input_creds
   puts "please enter a user name"
   user = gets.chomp
   puts "please enter a password"
   pass = gets.chomp
   return [pass, user]
 end
