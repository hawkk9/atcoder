N = gets.chomp.to_i
S = gets.chomp

answer = S.split('').map do |char|
  converted_ord = char.ord + N
  converted_ord -= 26 if converted_ord > 'Z'.ord
  converted_ord.chr
end.join

puts answer
