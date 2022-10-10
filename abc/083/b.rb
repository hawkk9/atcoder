def digit_sum(num)
  sum = 0
  while num > 0
    sum += num % 10
    num /= 10
  end
  sum
end

n, a, b = gets.chomp.split.map(&:to_i)

sum = 0
(1..n).each do |num|
  sum += num if digit_sum(num).between?(a, b)
end

puts sum
