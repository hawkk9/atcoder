def calc(k, num, i = 1)
  return 0 if num == 0

  num % 10 * (k ** i) + calc(k, num / 10, i + 1)
end

k = gets.chomp.to_i
a, b = gets.chomp.split.map(&:to_i)

puts calc(k, a)
puts calc(k, b)
