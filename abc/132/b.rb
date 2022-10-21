n = gets.chomp.to_i
p = gets.chomp.split.map(&:to_i)

count = 0
(1...(n - 1)).each do |i|
  ary = [p[i - 1], p[i], p[i + 1]].sort
  count += 1if p[i] == ary[1]
end

puts count
