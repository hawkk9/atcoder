n = gets.chomp.to_i

answer = if n % 1000 == 0
           0
         else
           1000 - (n % 1000)
         end

puts answer
