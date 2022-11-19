def is_time?(h, m)
  h >= 0 && h <= 23 && m >= 0 && m <= 59
end

def is_errorable?(h, m)
  f_h = format("%02d", h)
  f_m = format("%02d", m)
  c_h = f_h[0] + f_m[0]
  c_m = f_h[1] + f_m[1]
  is_time?(c_h.to_i, c_m.to_i)
end

H, M = gets.chomp.split.map(&:to_i)

h = H
m = M
loop do
  break if is_errorable?(h, m)
  m += 1
 if m == 60
   h += 1
   m = 0
 end
  if h == 24
    h = 0
  end
end

puts "#{h} #{m}"


