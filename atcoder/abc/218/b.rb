P = gets.chomp.split.map(&:to_i)

str = P.map do |p|
  ('a'.ord + p - 1).chr
end.join

puts str
