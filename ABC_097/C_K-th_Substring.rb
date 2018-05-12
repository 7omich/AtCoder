# TLE (AC in |s| <= 50 case.)

s = gets.chomp
k = gets.chomp.to_i

n = s.length
arr = []

for i in 1..n
  for j in 0..n-i
    substr = s[j..j+i-1]
    unless arr.include?(substr)
      arr.push(substr)
    end
  end
end

arr.sort!
puts arr[k-1]
