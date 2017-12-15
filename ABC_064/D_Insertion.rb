n = gets.chomp.to_i
brackets = gets.chomp
partical_brackets = brackets

def next_short_brackets(brackets)
  return brackets.split('()').join
end

while partical_brackets.split('()').join != partical_brackets do
  partical_brackets = next_short_brackets(partical_brackets)
end

array = partical_brackets.split('')
lefthand_counts = array.count {|item| item == ')'}
righthand_counts = array.count {|item| item == '('}

input = brackets.split('')
lefthand_insertion = ['('] * lefthand_counts
righthand_insertion = [')'] * righthand_counts

answer = lefthand_insertion.concat(input).concat(righthand_insertion).join
print answer
