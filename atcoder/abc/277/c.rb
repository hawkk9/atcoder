@max_floor = 1

def next_floor(current_floor, current_path)
  return if @ladder_map[current_floor].nil?
  @ladder_map[current_floor].each do |floor|
    next if current_path.include?(floor)
    current_path.push(floor)
    @max_floor = floor if floor > @max_floor
    next_floor(floor, current_path)
  end
end

N = gets.chomp.to_i

@ladder_map = {}
N.times do
  floors = gets.chomp.split.map(&:to_i)
  @ladder_map[floors[0]] = [] if @ladder_map[floors[0]].nil?
  @ladder_map[floors[0]].push(floors[1])
  @ladder_map[floors[1]] = [] if @ladder_map[floors[1]].nil?
  @ladder_map[floors[1]].push(floors[0])
end

next_floor(1, [1])

puts @max_floor
