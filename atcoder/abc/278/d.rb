N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)
Q = gets.chomp.to_i

i = 0
a = A.map do |e|
  n = [i, e]
  i += 1
  n
end.to_h

last_all_num = nil
Q.times do
  query = gets.chomp.split.map(&:to_i)

  case query[0]
  when 1 then
    last_all_num = query[1]
    a = {}
  when 2 then
    a[query[1] - 1] = last_all_num if a[query[1] - 1].nil?
    a[query[1] - 1] += query[2]
  when 3 then
    puts(a[query[1] - 1].nil? ? last_all_num : a[query[1] - 1])
  end
end
