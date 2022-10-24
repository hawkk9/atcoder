hp, ap = gets.chomp.split.map(&:to_i)
attack_count = 0

while hp > 0
  hp -= ap
  attack_count += 1
end

puts attack_count
