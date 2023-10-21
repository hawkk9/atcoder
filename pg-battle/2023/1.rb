N = gets.chomp.to_i

result = 0.5
(N - 1).times do
  result *= 0.5
end

puts result
