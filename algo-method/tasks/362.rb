N = gets.chomp.to_i

remain = N
day = 0

while remain > 0
  if remain % 2 == 0
    remain /= 2
  else
    remain -= 1
  end
  day += 1
end

puts day
