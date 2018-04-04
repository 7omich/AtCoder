# AC
n = gets.chomp.to_i
d, x = gets.chomp.split(' ').map(&:to_i)

arr = []
(1..n).each do |i|
  arr[i-1] = gets.chomp.to_i
end

arr.each do |i|
  eaten = (d-1)/i + 1
  x += eaten
end

p x
