# AC

d, n = gets.chomp.split(' ').map(&:to_i)

if n == 100
  p 100 ** d * (n + 1)
else
  p 100 ** d * n
end
