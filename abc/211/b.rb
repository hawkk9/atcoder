N = gets.chomp.to_i
T, A = gets.chomp.split.map(&:to_i)
H = gets.chomp.split.map(&:to_i)

nearest_point = nil
nearest_distance = Float::MAX
H.each_with_index do |h, i|
  mercury = T - h * 0.006
  distance = (A - mercury).abs
  next if distance > nearest_distance
  nearest_distance = distance
  nearest_point = i + 1
end

puts nearest_point
