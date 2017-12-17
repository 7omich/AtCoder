# ACC

n = gets.chomp.to_i
array = gets.chomp.split(' ').map(&:to_i)
d = array.max - array.min
print(d)
