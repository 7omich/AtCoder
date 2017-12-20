# TLE

n = gets.chomp.to_i
array = []
total_length = 0
is_valid = true

(0..n-1).each do |n|
  array[n] = gets.chomp.split(' ').map(&:to_i)
end

(0..n-1).each do |i|
  if is_valid == false
    next
  end
  (i+1..n-1).each do |j|
    if is_valid == false
      next
    end
    total_length += array[i][j]
    (0..n-1).each do |k|
      if k == i
        next
      end

      if array[i][j] > array[i][k] && array[i][j] - array[i][k] == array[k][j]
        total_length -= array[i][j]
      elsif array[i][j] > array[i][k] && array[i][j] - array[i][k] > array[k][j]
        is_valid = false
        next
      end
    end
  end
end

if is_valid
  p total_length
else
  p -1
end
