s = gets.chomp
t = gets.chomp

result = s.split('').sort.join < t.split('').sort.reverse.join

puts result ? 'Yes' : 'No'
