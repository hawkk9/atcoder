N, X = gets.chomp.split.map(&:to_i)
L = gets.chomp.split.map(&:to_i)

count = 0
prev_coord = 0
(N + 1).times do |i|
  current_coord = prev_coord + L[i - 1]
  count += 1 if current_coord < X
end

puts count
