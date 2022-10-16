def tax_8(price)
  (price * 0.08).to_i
end

def tax_10(price)
  (price * 0.1).to_i
end


a, b = gets.chomp.split.map(&:to_i)

price = 0
loop do
  tax_8 = tax_8(price)
  tax_10 = tax_10(price)
  break if (tax_8 == a && tax_10 == b) || (tax_8 > a || tax_10 > b)
  price += 1
end

tax_8 = tax_8(price)
tax_10 = tax_10(price)
result = (tax_8 == a && tax_10 == b) ? price : -1
puts result
