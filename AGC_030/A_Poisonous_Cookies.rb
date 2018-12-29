# AC

a, b, c = gets.chomp.split(' ').map(&:to_i)

cmax = [a + b + 1, c].min

print("#{b + cmax}\n")
