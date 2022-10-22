N = gets.chomp.to_i
formula = gets.chomp

groups =  formula.delete('+').split('=').map do |group|
  group.strip.split.map(&:to_i)
end
sum_by_group = groups.map do |group|
  group.sum
end
result = sum_by_group.uniq.count == 1

puts result ? 'Yes' : 'No'
