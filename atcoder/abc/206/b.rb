n = gets.chomp.to_i

sum = 0
i = 1
loop do
  sum += i
  break if sum >= n
  i += 1
end

puts i
