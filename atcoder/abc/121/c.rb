N, M = gets.chomp.split.map(&:to_i)

drinks = []
N.times do
  a, b = gets.chomp.split.map(&:to_i)
  drinks.push({ price: a, num: b })
end
sorted_drinks = drinks.sort_by {|drink| drink[:price] }

bought_num = 0
bought_price = 0
sorted_drinks.each do |drink|
  num = [drink[:num], M - bought_num].min
  bought_num += num
  bought_price += drink[:price] * num
  break if bought_num == M
end

puts bought_price
