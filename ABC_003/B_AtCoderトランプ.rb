# AC

s = gets.chomp.split('')
t = gets.chomp.split('')
arr = %w(a t c o d e r)

n = s.count
false_flag = 0

(0..n-1).each do |n|
  unless s[n] == t[n] || (s[n] == '@' && arr.include?(t[n])) || (t[n] == '@' && arr.include?(s[n]))
    false_flag += 1
  end
end

if false_flag == 0
  print "You can win\n"
else
  print "You will lose\n"
end
