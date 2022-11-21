H, W, N, h, w = gets.chomp.split.map(&:to_i)
A = []
H.times do
  A.push(gets.chomp.split.map(&:to_i))
end

(0..(H - h)).each do |k|
  results = []
  (0..(W - w)).each do |l|
    # puts "k, l: #{k}, #{l}"
    total = []
    A.each_with_index do |line, k_i|
      line.each_with_index do |cell, l_i|
        if k_i >= k && k_i <= (k + h - 1) && l_i >= l && l_i <= (l + w - 1)
          # puts "k_i, l_i: #{k_i}, #{l_i}"
          next
        end
        total.push(cell)
      end
    end
    results.push(total.uniq.count)
  end
  puts results.join(' ')
end
