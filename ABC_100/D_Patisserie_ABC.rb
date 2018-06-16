# AC

n, m = gets.chomp.split(' ').map(&:to_i)

ary = []
(0...n).each do |i|
  ary[i] = gets.chomp.split(' ').map(&:to_i)
end

inv_ary = []
(0...n).each do |i|
  inv_ary[i] = ary[i].map {|n| n * -1 }
end

sum_ary = []
(0...8).each do |i|
  sum_ary[i] = []
end

(0...n).each do |i|
  sum_ary[0][i] = ary[i][0] + ary[i][1] + ary[i][2]
  sum_ary[1][i] = ary[i][0] + ary[i][1] - ary[i][2]
  sum_ary[2][i] = ary[i][0] - ary[i][1] + ary[i][2]
  sum_ary[3][i] = ary[i][0] - ary[i][1] - ary[i][2]
  sum_ary[4][i] = - ary[i][0] + ary[i][1] + ary[i][2]
  sum_ary[5][i] = - ary[i][0] + ary[i][1] - ary[i][2]
  sum_ary[6][i] = - ary[i][0] - ary[i][1] + ary[i][2]
  sum_ary[7][i] = - ary[i][0] - ary[i][1] - ary[i][2]
end

ans = []

sum_ary.each do |sub_ary|
  now_ans = 0
  sub_ary.sort!

  (0...m).each do |i|
    now_ans += sub_ary[n-i-1]
  end

  ans.push(now_ans)
end

p ans.max
