S = gets.chomp

pos =  S.rindex('a')
puts pos != nil ? pos + 1 : -1
