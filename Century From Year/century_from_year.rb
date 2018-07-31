#  http://www.codewars.com/kata/century-from-year/ruby
#  Introduction
#  The first century spans from the year 1 up to and including the year 100, The second - from the year 101 up to and including the year 200, etc.

#  Task : Century From Year
#  Given a year, return the century it is in.

#  Input , Output Examples ::
#  centuryFromYear(1705)  returns (18)
#  centuryFromYear(1900)  returns (19)
#  centuryFromYear(1601)  returns (17)
#  centuryFromYear(2000)  returns (20)

# Best Practices => 10 Clever => 15
def century(year)
  (year - 1) / 100 + 1
end

# Best Practices => 8 Clever => 5
def century(year)
  (year/100.0).ceil
end

# Best Practices => 1 Clever => 6
def century(year)
  (year + 99) / 100
end

# mine
def century(year)
  k = year.divmod(100)
  k[1]>0 ? k[0]+1 : k[0]
end
