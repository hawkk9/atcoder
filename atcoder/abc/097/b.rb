X = gets.chomp.to_i

max = 1
2.upto(X) do |b|
  p = 2
  while b ** p <= X do
    max = [b ** p, max].max
    p += 1
  end
end

puts max
