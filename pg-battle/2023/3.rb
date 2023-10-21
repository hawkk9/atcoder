A = gets.chomp.to_i
B = gets.chomp.to_s.to_i(2)

if A > B
  puts '>'
elsif A == B
  puts '='
else
  puts '<'
end
