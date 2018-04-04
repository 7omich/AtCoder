# AC
n = gets.chomp.to_i
arr = gets.chomp.split(' ').map(&:to_i)

all_dist = arr[0].abs
(0..n-2).each do |i|
  all_dist += (arr[i+1] - arr[i]).abs
end
all_dist += arr[n-1].abs

p all_dist - (arr[0].abs + (arr[1] - arr[0]).abs) + arr[1].abs

(1..n-2).each do |i|
  minus = (arr[i+1] - arr[i]).abs + (arr[i] - arr[i-1]).abs
  plus = (arr[i+1] - arr[i-1]).abs
  p all_dist - minus + plus
end

p all_dist - (arr[n-1].abs + (arr[n-1] - arr[n-2]).abs) + arr[n-2].abs
