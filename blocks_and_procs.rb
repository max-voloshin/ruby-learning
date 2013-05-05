a = lambda{ |x| x * 10}
b = Proc.new{ |x| x * 100 }

#puts [1,2,3].map(&b)

def some(&block)
  puts block
end

some {|x| x * 2}