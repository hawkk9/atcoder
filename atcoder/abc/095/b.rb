N, X = gets.chomp.split.map(&:to_i)

m = []
N.times do
  m.push(gets.chomp.to_i)
end

puts m.count + ((X - m.sum) / m.min)
