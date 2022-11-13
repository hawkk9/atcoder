S = gets.chomp

num = S.to_i
is_number = format("%03d", num) == S
result = is_number ? num * 2 : 'error'

puts result
