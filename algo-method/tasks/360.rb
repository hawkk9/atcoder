X = gets.chomp.to_i
A = gets.chomp.split(' ').map(&:to_i)

usable_num_map = { 50 => A[0], 10 => A[1], 5 => A[2], 1 => A[3] }

coin_number = 0
remain_amount = X

[50, 10, 5, 1].each do |coin_price|
  best = remain_amount / coin_price
  actual = [best, usable_num_map[coin_price]].min
  coin_number += actual
  remain_amount -= coin_price * actual
end

puts coin_number
