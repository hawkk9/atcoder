N = gets.chomp.to_i
S = []
N.times do
  S.push(gets.chomp)
end

result = S.length == S.uniq.length && S.all? do |str|
  next false unless %w[H D C S].include?(str[0])
  %w[A 2 3 4 5 6 7 8 9 T J Q K].include?(str[1])
end

puts result ? 'Yes' : 'No'
