S = gets.chomp
len = S.length

result = S[0] == 'A' && S[2..(len - 2)].include?('C') && S.gsub(/[A-Z]/, '').length == (len - 2)

puts result ? 'AC' : 'WA'
