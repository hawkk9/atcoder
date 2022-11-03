A, B = gets.chomp.split.map(&:to_i)
S = gets.chomp

result = S[A] == '-' && S.delete('-').length == S.length - 1

puts result ? 'Yes' : 'No'
