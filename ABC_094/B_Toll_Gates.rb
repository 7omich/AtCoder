# AC

n, m, x = gets.chomp.split(' ').map(&:to_i)
arr = gets.chomp.split(' ').map(&:to_i)

small = arr.select { |i| i < x }.count
large = m - small

if small <= large
  puts small
else
  puts large
end
