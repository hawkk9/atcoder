t_hp, t_atk, a_hp, a_atk = gets.chomp.split.map(&:to_i)

while t_hp > 0 && a_hp > 0
  a_hp -= t_atk
  t_hp -= a_atk
end

if a_hp <= 0
  result = 'Yes'
else
  result = 'No'
end

puts result
