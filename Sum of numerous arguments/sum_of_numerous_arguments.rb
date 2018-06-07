#  http://www.codewars.com/kata/sum-of-numerous-arguments/ruby
#  Task:
#  After calling the function findSum() with any number of non-negative integer arguments, it should return the sum of all those arguments. If no arguments are given, the function should return 0, if negative arguments are given, it should return -1.
#
#  eg
#
#  find_sum(1,2,3,4); # returns 10
#  find_sum(1,-2);    # returns -1
#  find_sum();        # returns 0 0
#  Hint: research the arguments object on google or read Chapter 4 from Eloquent Javascript

# Best Practices => 11 Clever => 5
def find_sum(*args)
  return -1 if args.any?{|a| a < 0}
  args.reduce(0, :+)
end

# Best Practices => 2 Clever => 6
def find_sum(*vals)
  vals.any? { |i| i<0 } ? -1 : vals.reduce(0, :+)
end
