N, X = gets.chomp.split.map(&:to_i)
P = gets.chomp.split.map(&:to_i)

puts(P.index(X) + 1)
