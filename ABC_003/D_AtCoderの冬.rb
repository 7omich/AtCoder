r, c = gets.chomp.split(' ').map(&:to_i)
x, y = gets.chomp.split(' ').map(&:to_i)
d, l = gets.chomp.split(' ').map(&:to_i)

# X * Y 区画の配置
position = (r - x + 1) * (c - y + 1)

# 区画内のデスク・サーバーラックの配置
n = x * y

arrange = (1..n).to_a.combination(d).count

p position * arrange
