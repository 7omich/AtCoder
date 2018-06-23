# AC

n, k = gets.chomp.split(' ').map(&:to_i)
ary = gets.chomp.split(' ').map(&:to_i)

n -= k
ans = 1

while n >= (k-1)
  ans += 1
  n -= (k-1)
end

if n > 0
  ans += 1
end

p ans
