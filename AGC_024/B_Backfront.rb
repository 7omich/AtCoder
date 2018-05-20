# AC

n = gets.chomp.to_i
arr = []
(0..n-1).each do |i|
  arr[i] = gets.chomp.to_i
end

hash = {}

(0..arr.length-1).each do |i|
  hash[arr[i]] = i
end

hash_sorted = hash.sort {|(k1, v1), (k2, v2)| k1 <=> k2 }.to_h

max_asc = 1
now_asc = 1

(1..hash_sorted.length-1).each do |i|
  if hash_sorted[i] < hash_sorted[i+1]
    now_asc += 1
  else
    now_asc = 1
  end

  if now_asc > max_asc
    max_asc = now_asc
  end
end

p arr.count - max_asc
