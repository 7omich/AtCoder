# WA in 7/49 cases

n = gets.chomp.to_i
arr = []
(0..n-1).each do |i|
  arr[i] = gets.chomp.to_i
end

ans = 0
ans_flag = true

(1..n-1).each do |i|
  if arr[n-i-1] >= arr[n-i]
    ans += arr[n-i]
  elsif arr[n-i-1] - arr[n-i] = -1
    ans += 1
  else
    ans_flag = false
  end
end

if arr[0] != 0
  ans_flag = false
end

if ans_flag
  p ans
else
  p -1
end
