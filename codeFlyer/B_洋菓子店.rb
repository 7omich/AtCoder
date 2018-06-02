# AC

a, b, n = gets.chomp.split(' ').map(&:to_i)
x = gets.chomp

x.each_char do |c|
  if c == 'S'
    a -= 1 if a > 0
  elsif c == 'C'
    b -= 1 if b > 0
  elsif c == 'E'
    if a >= b && a > 0
      a -= 1
    elsif b > 0
      b -= 1
    end
  end
end

p a
p b
