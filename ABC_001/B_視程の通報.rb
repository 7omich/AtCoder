# AC

m = gets.chomp.to_i
vv = ""

if m < 100
  vv = "00"
elsif 100 <= m && m < 1000
  vv = "0#{m/100}"
elsif 1000 <= m && m <= 5000
  vv = "#{m/100}"
elsif 6000 <= m && m <= 30000
  vv = "#{m/1000 + 50}"
elsif 35000 <= m && m <= 70000
  vv = "#{(m/1000 - 30)/5 + 80}"
elsif 70000 < m
  vv = "89"
end

print "#{vv}\n"
