N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)
Q = gets.chomp.to_i

a = A
Q.times do
  query = gets.chomp.split.map(&:to_i)

  case query[0]
  when 1 then
    a = a.map{|_a| query[1] }
  when 2 then
    a[query[1] - 1] += query[2]
  when 3 then
    puts a[query[1] - 1]
  end
end
