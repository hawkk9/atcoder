S = gets.chomp.to_s

m = S.match(/(.+)x\^(.*)/)
A = m[1].to_i
B = m[2].to_i

puts "#{(A * B)}x^#{(B - 1)}"
