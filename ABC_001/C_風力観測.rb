# AC

input = gets.chomp.split(' ').map(&:to_f)
deg = input[0]
dis = input[1]

dir_arr = ["N", "NNE", "NE", "ENE", "E", "ESE", "SE", "SSE", "S", "SSW", "SW", "WSW", "W", "WNW", "NW", "NNW"]
index = (deg + 112.5) / 225
dir = dir_arr[index.floor%16]
w = 0

if dis < 15
  dir = "C"
elsif 15 <= dis && dis < 93
  w = 1
elsif 93 <= dis && dis < 201
  w = 2
elsif 201 <= dis && dis < 327
  w = 3
elsif 327 <= dis && dis < 477
  w = 4
elsif 477 <= dis && dis < 645
  w = 5
elsif 645 <= dis && dis < 831
  w = 6
elsif 831 <= dis && dis < 1029
  w = 7
elsif 1029 <= dis && dis < 1245
  w = 8
elsif 1245 <= dis && dis < 1467
  w = 9
elsif 1467 <= dis && dis < 1707
  w = 10
elsif 1707 <= dis && dis < 1959
  w = 11
elsif 1959 <= dis
  w = 12
end

print "#{dir} #{w}\n"

# Float の除算は怖いのでなるべく行わないような計算方針にする
