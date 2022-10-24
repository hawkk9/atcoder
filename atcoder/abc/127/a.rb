old, price = gets.chomp.split.map(&:to_i)

cost = if old >= 13
         price
       elsif old > 5
         price / 2
       else
         0
       end

puts cost
