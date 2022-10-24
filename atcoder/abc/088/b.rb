N = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

point_of_alcie = 0
point_of_bob = 0
cards = a.sort{|a, b| b.to_i <=> a.to_i }
cards.each_with_index do |card, i|
  if i % 2 == 0
    point_of_alcie += card
  else
    point_of_bob += card
  end
end

puts point_of_alcie - point_of_bob
