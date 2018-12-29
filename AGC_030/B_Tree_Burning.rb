# WA

def calc_from(n, arr)
  sum = 0
  m = arr.count - n - 1
  if n < m
    (1..n).each do |i|
      sum += arr[n-i] * 2*i
      sum += arr[n+i] * (2*i - 1)
    end
    (2*n+1..arr.count-1).each do |i|
      sum += arr[i] * (2*n+1)
    end
  elsif n > m && m != 0
    (1..m).each do |i|
      sum += arr[n-i] * (2*i - 1)
      sum += arr[n+i] * 2*i
    end
    (0..n-m-1).each do |i|
      sum += arr[i] * (2*m+1)
    end
  elsif m == 0
    (0..n-1).each do |i|
      sum += arr[n]
    end
  else
    left = 0
    (1..n).each do |i|
      left += arr[n-i] * 2*i
      left += arr[n+i] * (2*i - 1)
    end
    right = 0
    (1..n).each do |i|
      right += arr[n-i] * 2*i
      right += arr[n+i] * (2*i - 1)
    end
    sum = [left, right].max
  end
  return sum
end

l, n = gets.chomp.split(' ').map(&:to_i)

arr = []
(0..n-1).each do |i|
  arr[i] = gets.chomp.to_i
end

segment_arr = [arr[0]]
(0..n-2).each do |i|
  segment_arr[i+1] = arr[i+1] - arr[i]
end
segment_arr.push(l - arr[n-1])

max = 0
(0..n).each do |i|
  a = segment_arr.dup
  c = calc_from(i, a)
  max = [max, c].max
  # print("i: #{i}, c: #{c}\n")
end

p max
