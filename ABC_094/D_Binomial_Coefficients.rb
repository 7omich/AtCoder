# TLE in contest
# AC

n = gets.chomp.to_i
arr = gets.chomp.split(' ').map(&:to_i)

arr.sort!
max = arr.pop

closest = arr.min_by { |m| (m - max / 2.0).abs }
print "#{max} #{closest}\n"
