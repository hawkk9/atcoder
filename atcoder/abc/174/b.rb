N, D = gets.chomp.split.map(&:to_i)

count = 0
N.times do
  x, y = gets.chomp.split.map(&:to_i)
  count += 1 if Math.sqrt(x * x + y * y) <= D
end

puts count
