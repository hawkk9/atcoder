def calc(num)
  return 0 if num % 2 == 1
  1 + calc(num / 2)
end

n = gets.chomp.to_i

result = {count: 0, num: 0}
(1..n).each do |i|
  count = calc(i)
  if count >= result[:count]
    result[:count] = count
    result[:num] = i
  end
end

puts result[:num]
