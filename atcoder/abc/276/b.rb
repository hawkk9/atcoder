N, M = gets.chomp.split.map(&:to_i)

road_map = {}
M.times do
  a, b = gets.chomp.split.map(&:to_i)
  road_map[a] = [] if road_map[a].nil?
  road_map[a].push(b)
  road_map[b] = [] if road_map[b].nil?
  road_map[b].push(a)
end

(1..N).each do |i|
  if road_map[i] != nil
    cities = road_map[i].uniq.sort
    puts "#{cities.count} #{cities.join(' ')}"
  else
    puts 0
  end
end
