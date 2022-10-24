def judge(k, a, b)
  multiple = 0
  while k * multiple <= b
    return true if k * multiple >= a
    multiple += 1
  end

  false
end

k = gets.chomp.to_i
a, b = gets.chomp.split.map(&:to_i)

puts judge(k, a, b) ? 'OK' : 'NG'
