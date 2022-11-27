def find
  0.upto(N) do |i|
    0.upto(N - i) do |j|
      k = N - i - j
      if 10000 * i + 5000 * j + 1000 * k == Y
        return [i, j, k]
      end
    end
  end
  [-1, -1, -1]
end

N, Y = gets.chomp.split(' ').map(&:to_i)
i, j, k = find
puts "#{i} #{j} #{k}"
