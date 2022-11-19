N, Q = gets.chomp.split.map(&:to_i)

follow_map = {}

Q.times do
  t, a, b = gets.chomp.split.map(&:to_i)

  case t
  when 1 then
    follow_map[a] = {} if follow_map[a].nil?
    follow_map[a][b] = true
  when 2 then
    follow_map[a] = {} if follow_map[a].nil?
    follow_map[a][b] = false
  when 3 then
    puts (!follow_map[a].nil? && follow_map[a][b] && !follow_map[b].nil? && follow_map[b][a])  ? 'Yes' : 'No'
  end
end
