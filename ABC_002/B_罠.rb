# AC

w_arr = gets.chomp.split('')

w_arr.delete('a')
w_arr.delete('i')
w_arr.delete('u')
w_arr.delete('e')
w_arr.delete('o')

ans = w_arr.join

print "#{ans}\n"
