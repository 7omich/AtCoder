# AC

n = gets.chomp.to_i
k = gets.chomp.to_i
array = gets.chomp.split(' ').map(&:to_i)
sum = 0

array.each do | x |
  if x > k - x
    sum += (k - x) * 2
  else
    sum += x * 2
  end
end

print(sum)
