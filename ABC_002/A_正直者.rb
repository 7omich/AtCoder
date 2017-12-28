# AC

arr = gets.chomp.split(' ').map(&:to_i)

if arr[0] > arr[1]
  p arr[0]
else
  p arr[1]
end
