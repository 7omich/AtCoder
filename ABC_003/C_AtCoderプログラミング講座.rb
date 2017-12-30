# AC

arr = gets.chomp.split(' ').map(&:to_i)
n = arr[0]
k = arr[1]

rate = 0
rate_arr = gets.chomp.split(' ').map(&:to_f)

rate_arr.sort!

(0..k-1).each do |i|
  rate = (rate + rate_arr[-k+i]) / 2
end

p rate
