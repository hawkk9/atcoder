def octal_to_decimal(n)
  decimal = 0
  i = 0
  while n != 0 do
    decimal += (n % 10) * (8 ** i)
    n /= 10
    i += 1
  end
  decimal
end

def decimal_to_nonary(n)
  nonary = ''
  while n != 0 do
    nonary = (n % 9).to_s + nonary
    n /= 9
  end
  nonary
end

n, k = gets.chomp.split.map(&:to_i)

octal = n

k.times do
  decimal = octal_to_decimal(octal)
  nonary = decimal_to_nonary(decimal)
  octal = nonary.to_s.gsub('8', '5').to_i
end

puts octal
