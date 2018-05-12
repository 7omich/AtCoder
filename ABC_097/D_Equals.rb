# Could't solve in contest (Couldn't implement BFS...)

n , m = gets.chomp.split(' ').map(&:to_i)
p = gets.chomp.split(' ').map(&:to_i)
swap = []
for i in 1..m
  swap[i-1] = gets.chomp.split(' ').map(&:to_i)
end

hash = {}

def can_reach?(start_point, goal_point, swap)
  min = [start_point, goal_point].min
  max = [start_point, goal_point].max

  unless hash["#{min}->#{max}"].nil?
    return hash["#{min}->#{max}"]
  end

  swap.each do |s|
    if s.include?(start_point)
      next_point = s[1 - s.index(start_point)]
      small = [next_point, goal_point].min
      large = [next_point, goal_point].max
      if next_point = goal_point
        hash["#{min}->#{max}"] = true
      else
        hash["#{small}->#{large}"] = can_reach?(next_point, goal_point, swap)
      end
    end
  end
end
