n = gets.chomp.to_i
a = gets.chomp.to_i

answer = (n % 500) <= a ? 'Yes' : 'No'

puts answer
