A = gets.chomp.to_i
B = gets.chomp.to_i
C = gets.chomp.to_i
X = gets.chomp.to_i

match_count = 0
(0..A).each do |coin_num_of_500|
  (0..B).each do |coin_num_of_100|
    (0..C).each do |coin_num_of_50|
      match_count += 1if coin_num_of_500 * 500 + coin_num_of_100 * 100 + coin_num_of_50 * 50 == X
    end
  end
end

puts match_count
