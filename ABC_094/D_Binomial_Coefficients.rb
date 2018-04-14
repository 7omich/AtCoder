# TLE in contest

n = gets.chomp.to_i
arr = gets.chomp.split(' ').map(&:to_i)

sorted_arr = arr.dup
sorted_arr.sort!

class Integer
  def combination(k)
    self.factorial/(k.factorial*(self-k).factorial)
  end

  def factorial
    return 1 if self == 0
    (1..self).inject(:*)
  end
end

def comb_case(max, min)
  case_num = max.combination(min)
  return case_num
end

def binary_search(arr, n, key)
  left = 0
  right = n
  while left < right
    mid = (left + right) / 2
    if arr[mid] == key
      return mid
    elsif key < arr[mid]
      right = mid
    else
      left = mid + 1
    end
  end
  return left
end

max_case = 0
max_comb = []

sorted_arr.each_with_index do |item, index|
  key = (item + 1) / 2
  new_arr = sorted_arr.dup
  new_arr.delete_at(index)
  cand_max = binary_search(new_arr, n-1, key)
  cand_min = (cand_max - 1) < 0 ? 0 : cand_max - 1

  case_max = comb_case(item, new_arr[cand_max])
  if case_max > max_case
    max_case = case_max
    max_comb = [item, new_arr[cand_max]]
    print "max_comb: #{max_comb.join(' ')}max_case: #{max_case}\n"
  end

  case_min = comb_case(item, new_arr[cand_min])
  if case_min > max_case
    max_case = case_min
    max_comb = [item, new_arr[cand_min]]
    print "max_comb: #{max_comb.join(' ')}max_case: #{max_case}\n"
  end
end

puts max_comb.join(' ')
