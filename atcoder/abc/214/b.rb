S, T = gets.chomp.split.map(&:to_i)

count = 0

(0..100).each do |a|
  (0..100).each do |b|
    (0..100).each do |c|
      count += 1if a + b + c <= S && a * b * c <= T
    end
  end
end

puts count
