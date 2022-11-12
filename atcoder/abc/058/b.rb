O = gets.chomp
E = gets.chomp

e_length = E.length

password = ''
O.length.times do |i|
  password += O[i]
  password += E[i] if i < e_length
end

puts password
