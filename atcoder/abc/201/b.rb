N = gets.chomp.to_i

S = []
T = []
N.times do
  inputs = gets.chomp.split
  S.push(inputs[0])
  T.push(inputs[1].to_i)
end

max = T.max
second = { i: nil, t: 0 }
T.each_with_index do |t, i|
  next if t == max
  next if t < second[:t]
  second[:t] = t
  second[:i] = i
end

puts S[second[:i]]
