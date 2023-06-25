N = gets.chomp.to_i

amount = N
num = 0

[5, 1].each do |coin|
  num += amount / coin
  amount = N % coin
end

puts num
