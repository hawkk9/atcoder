N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)

n = (1..N).to_a
a = A.sort

puts n == a ? 'Yes' : 'No'
