N, K = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)

K.times do
  A.shift
  A.push(0)
end

puts A.join(' ')

