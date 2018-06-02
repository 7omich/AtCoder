# TLE in 8/16 cases

n, d = gets.chomp.split(' ').map(&:to_i)
ary = gets.chomp.split(' ').map(&:to_i)

ans = 0

ary.each_index do |i|
  j_upper = (i+1...ary.size).bsearch { |j| ary[j] > ary[i] + d } || ary.size
  (i+1...j_upper).each do |j|
    d1 = ary[j] - ary[i]
    k_upper = (j_upper...ary.size).bsearch { |k| ary[k] > ary[j] + d } || ary.size
    k_lower = (j_upper...ary.size).bsearch { |k| ary[k] > ary[j] + d - d1 } || ary.size
    print "i = #{ary[i]}, j = #{ary[j]}, k = #{ary[k_lower]} ~ #{ary[k_upper]}\n"
    ans += k_upper - k_lower
  end
end

p ans
