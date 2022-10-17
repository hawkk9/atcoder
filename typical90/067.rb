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
  20.downto(0) do |i|
    base = 9 ** i
    if base <= n
      count = n / base
      n -= base * count
      nonary = nonary + count.to_s
    else
      nonary = nonary + '0'
    end
  end
  nonary.to_i
end

n, k = gets.chomp.split.map(&:to_i)

octal = n

k.times do
  decimal = octal_to_decimal(octal)
  nonary = decimal_to_nonary(decimal)
  octal = nonary.to_s.gsub('8', '5').to_i
end

puts octal
