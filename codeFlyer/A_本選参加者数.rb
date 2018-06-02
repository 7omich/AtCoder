# AC

a = gets.chomp.to_i
b = gets.chomp.to_i

while a % b != 0
  a -= 1
end

p a
