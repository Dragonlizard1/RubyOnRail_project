 def guess_number guess
    number = 25
   puts "You got it!" if guess == 25
   puts "Guess was too high" if guess > 25
   puts "Guess was too low" if guess < 25
end 


guess_number 15
guess_number 35
guess_number 25
