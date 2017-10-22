def how_many_ones(num)
  num.to_s(2).count('1')
end

def dividers(num)
  ((2...num).select {|n| num % n == 0}).uniq.inspect
end

def filter(text)
  result = text.split(' ').select {|w| w.length > 4}
  result.count != 0 ? "\"#{result.join(' ')}\"" : 'ruby'
end

def dont_give_me_fives(input)
  interval = input.split(',').collect {|n| n.to_i}
  f = interval[0]
  l = interval[1]

  ((f..l).to_a.reject {|n| n.to_s[/5/]}).count
end

a = 6
puts how_many_ones(a)
b = 12
puts dividers(b)
c = 'The quick brown fox jumps over the lazy dog'
# c = 'over the lazy dog'
puts filter(c)
d = '1,9'
puts dont_give_me_fives(d)