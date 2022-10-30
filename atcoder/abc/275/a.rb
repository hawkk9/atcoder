N = gets.chomp.to_i
H = gets.chomp.split.map(&:to_i)

max_i = 0
max = 0
H.each_with_index do |h, i|
  next if max > h
  max = h
  max_i = i
end

puts max_i + 1

