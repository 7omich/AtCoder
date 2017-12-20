# AC

n = gets.chomp.to_i
arr = []

(0..n-1).each do |n|
  arr[n] = gets.chomp.split('-').map(&:to_f)
end

(0..n-1).each do |k|
  arr[k][0] = (arr[k][0] / 5).floor * 5
  arr[k][1] = (arr[k][1] / 5).ceil * 5
  if arr[k][1] % 100 == 60
    arr[k][1] += 40
  end
end

arr.sort_by! { |item| item[0] }
deleted_index = []

(1..n-1).each do |k|
  if arr[k-1][1] >= arr[k][0]
    arr[k][0] = arr[k-1][0]
    deleted_index.push(k-1)
    if arr[k-1][1] > arr[k][1]
      arr[k][1] = arr[k-1][1]
    end
  end
end

deleted_index.reverse.each do |i|
  arr.delete_at(i)
end

(0..arr.count-1).each do |k|
  (0..1).each do |i|
    if arr[k][i] < 10
      arr[k][i] = "000#{arr[k][i]}"
    elsif 10 <= arr[k][i] && arr[k][i] < 100
      arr[k][i] = "00#{arr[k][i]}"
    elsif 100 <= arr[k][i] && arr[k][i] < 1000
      arr[k][i] = "0#{arr[k][i]}"
    end
  end
  print "#{arr[k][0]}-#{arr[k][1]}\n"
end
