A, B, C, D, E, F = gets.chomp.split.map(&:to_i)

puts (A * B * C - D * E * F) % 998244353
