N, D = gets.chomp.split.map(&:to_i)

space = []
N.times do
  space.push(gets.chomp.split.map(&:to_i))
end

count = 0
(0..(space.length - 2)).each do |i|
  points_f = space[i]
  ((i + 1)..(space.length - 1)).each do |j|
    points_t = space[j]

    sum = 0
    points_f.each_with_index do |point_f, point_i|
      sum += (point_f - points_t[point_i]) ** 2
    end
    distance = Math.sqrt(sum)
    count += 1if distance.to_i == distance
  end
end

puts count
