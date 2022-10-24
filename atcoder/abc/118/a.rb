a, b = gets.chomp.split.map(&:to_i)

answer = if b % a == 0
           a + b
         else
           b - a
         end

puts answer
