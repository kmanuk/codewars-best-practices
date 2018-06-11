#  http://www.codewars.com/kata/sum-of-positive/ruby
#  Task: Sum of positive

# You get an array of numbers, return the sum of all of the positives ones.

# Example [1,-4,7,12] => 1 + 7 + 12 = 20

# Note: if there is nothing to sum, the sum is default to 0.

# Best Practices => 60 Clever => 27
def positive_sum(arr)
  arr.select{|x| x > 0}.reduce(0, :+)
end

# Best Practices => 18 Clever => 10
def positive_sum(arr)
  arr.select(&:positive?).inject(0,:+)
end
