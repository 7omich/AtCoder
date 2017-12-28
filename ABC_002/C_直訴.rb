# AC

arr = gets.chomp.split(' ').map(&:to_f)

a = arr[2] - arr[0]
b = arr[3] - arr[1]
c = arr[4] - arr[0]
d = arr[5] - arr[1]

s = (a * d - b * c).abs / 2

p s
