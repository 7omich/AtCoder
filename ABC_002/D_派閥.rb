# AC

arr = gets.chomp.split(' ').map(&:to_i)
n = arr[0]
m = arr[1]

rel = []
max_comb = []

(0..m-1).each do |i|
  rel[i] = gets.chomp.split(' ').map(&:to_i)
end

(2..n).each do |k|
  comb_arr = (1..n).to_a.combination(k).to_a
  comb_arr.each do |comb|
    flag = 0
    rel_matchpattern = comb.combination(2).to_a
    rel_matchpattern.each do |pattern|
      flag += rel.include?(pattern) ? 0 : 1
    end
    if flag == 0
      max_comb = comb
    end
  end
end

if m == 0
  max_comb = [1]
end

p max_comb.count
