a, b = gets.chomp.split.map(&:to_i)

min = [a, b].min
max = [a, b].max

puts min.to_s * max
