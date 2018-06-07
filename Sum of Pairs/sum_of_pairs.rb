#  https://www.codewars.com/kata/54d81488b981293527000c8f/train/ruby
#  Task:
#  Sum of Pairs
#  Given a list of integers and a single sum value, return the first two values (parse from the left please) in order of appearance that add up to form the sum.
#
#  sum_pairs([11, 3, 7, 5],         10)
#  #              ^--^      3 + 7 = 10
#  == [3, 7]
#
#  sum_pairs([4, 3, 2, 3, 4],         6)
#  #          ^-----^         4 + 2 = 6, indices: 0, 2 *
#  #             ^-----^      3 + 3 = 6, indices: 1, 3
#  #                ^-----^   2 + 4 = 6, indices: 2, 4
#  #  * entire pair is earlier, and therefore is the correct answer
#  == [4, 2]
#
#  sum_pairs([0, 0, -2, 3], 2)
#  #  there are no pairs of values that can be added to produce 2.
#  == None/nil/undefined (Based on the language)
#
#  sum_pairs([10, 5, 2, 3, 7, 5],         10)
#  #              ^-----------^   5 + 5 = 10, indices: 1, 5
#  #                    ^--^      3 + 7 = 10, indices: 3, 4 *
#  #  * entire pair is earlier, and therefore is the correct answer
#  == [3, 7]
#  Negative numbers and duplicate numbers can and will appear.
#
#  NOTE: There will also be lists tested of lengths upwards of 10,000,000 elements. Be sure your code doesn't time out.

def sum_pairs(ints, s)
  a = []
  i = 0

  while i < ints.size - 1 do
    if ints[i+1, ints.size].index(s-ints[i])
      t = ints[i+1, ints.size]

      if a.any? && a.last < t.index(s-ints[i])+i+1
        break
      end

      a.clear
      a << [i, t.index(s-ints[i])+1+i]
      a.flatten!
    end
    i += 1
  end

  [ints[a[0]], ints[a[1]]] if a.any?
end

def sum_pairs(ints, s)
  a = []
  k = ints.size

  for i in 0...ints.size-1 do
    for j in (i+1)...k do
      if ints[i] + ints[j] == s
        if a.any? && a[1] < j
          break
        end
        a.clear
        a << i << j
        k = j
      end
    end
  end

  [ints[a[0]], ints[a[1]]] if a.any?
end

ints=Array.new(100000) { rand(1...10900000) }
s = 100292
sum_pairs(ints, s)
