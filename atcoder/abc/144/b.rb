def is_able(n)
  (1..9).each do |a|
    (1..9).each do |b|
      if a * b == n
        return true
      end
    end
  end
  false
end

N = gets.chomp.to_i

result = is_able(N)

puts result ? 'Yes' : 'No'
