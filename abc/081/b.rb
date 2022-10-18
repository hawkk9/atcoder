N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)

a = A
count = 0
while a.all? {|a| a % 2 == 0 } do
  a = a.map {|a| a / 2 }
  count += 1
end

puts a
