N, K = gets.chomp.split.map(&:to_i)

h = []
N.times do
  h.push(gets.chomp.to_i)
end

sorted_h = h.sort
min = Float::MAX.to_i
(0..(N - K)).each do |i|
  height = sorted_h[i + K - 1] - sorted_h[i]
  min = height if height < min
end

puts min
