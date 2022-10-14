x = gets.chomp.to_i

balance = 100
past_year = 0
loop do
  break if balance >= x
  balance *= 1.01
  balance = balance.floor
  past_year += 1
end

puts past_year
