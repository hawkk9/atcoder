def calc(num)
  return 1 if num == 1
  num * calc(num - 1)
end

p = gets.chomp.to_i

total_coin_number = 0
10.downto(1) do |i|
  coin_price = calc(i)
  next if p < coin_price
  coin_number = p / coin_price <= 100 ? p / coin_price : 100
  p -= coin_price * coin_number
  total_coin_number += coin_number
  break if p == 0
end

puts total_coin_number
