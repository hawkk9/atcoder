N = gets.chomp.to_i

def is_able(n)
  (0..100).each do |num_of_4|
    (0..100).each do |num_of_7|
      return true if num_of_4 * 4 + num_of_7 * 7 == n
    end
  end
  false
end

result = is_able(N)

puts result ? 'Yes' : 'No'
