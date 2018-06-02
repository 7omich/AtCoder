# Could't solve in contest

h, w = gets.chomp.split(' ').map(&:to_i)
n, m = gets.chomp.split(' ').map(&:to_i)
ary = []
(0...n).each do |i|
  ary[i] = gets.chomp.split('')
end
