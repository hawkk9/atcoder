n = gets.chomp.to_i

sum = (1..n).sum do |i|
  next 0 if (i % 3 == 0) || (i % 5 == 0)
  i
end

puts sum
