N = gets.chomp.to_i
L = gets.chomp.split.map(&:to_i)

l_length = L.length

count = 0
(0..(l_length - 3)).each do |i|
  i_l = L[i]
  ((i + 1)..(l_length - 2)).each do |j|
    j_l = L[j]
    next if j_l == i_l
    ((j + 1)..(l_length - 1)).each do |k|
      k_l = L[k]
      next if k_l == i_l || k_l == j_l
      next unless k_l < (i_l + j_l) && k_l > (i_l - j_l).abs
      count += 1
    end
  end
end

puts count
