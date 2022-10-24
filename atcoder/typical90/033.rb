def lamp_count(n)
  if n % 2 == 0
    n / 2
  else
    n / 2 + 1
  end
end

h, w = gets.chomp.split.map(&:to_i)

answer = if h == 1 || w == 1
           h * w
         else
           lamp_count(h) * lamp_count(w)
         end

puts answer
