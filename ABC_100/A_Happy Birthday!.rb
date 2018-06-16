# AC

a, b = gets.chomp.split(' ').map(&:to_i)

if a <= 8 && b <= 8
  print "Yay!\n"
else
  print ":(\n"
end
