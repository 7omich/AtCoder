# AC

a, b, c, k = gets.chomp.split(' ').map(&:to_i)

if (a - b).abs > 10 ** 18
  p "Unfair"
elsif k % 2 == 0
  p a - b
else
  p b - a
end
