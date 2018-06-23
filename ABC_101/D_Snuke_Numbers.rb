# WA

k = gets.chomp.to_i
count = 0
ans_count = 0

# i = 1
# while k > count
#   if i.to_s.split('').last == '9'
#     count += 1
#   end
#   s1 = i.to_s.split('').map(&:to_i).inject(:+)
#   s2 = (i+1).to_s.split('').map(&:to_i).inject(:+)
#
#   if (i.to_f / s1.to_f) <= ((i+1).to_f / s2.to_f)
#     print "#{i}\n"
#     count += 1
#   end
#
#   i += 1
# end

while k > count
  n = (count % 9) + 1
  suffix = count / 9

  ary = [n]
  (1..suffix).each do |i|
    ary.push(9)
  end

  snuke = ary.join('').to_i
  print "#{snuke}\n"

  count += 1
end
