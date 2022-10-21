N, K = gets.chomp.split.map(&:to_i)
l = gets.chomp.split.map(&:to_i)

puts l.max(K).sum
