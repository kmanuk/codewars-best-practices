#  http://www.codewars.com/kata/thinkful-logic-drills-traffic-light
#  Task:
#
#  Thinkful - Logic Drills: Traffic light
#  You're writing code to control your town's traffic lights. You need a function to handle each change from green, to yellow, to red, and then to green again.
#
#  Complete the function that takes a string as an argument representing the current state of the light and returns a string representing the state the light should change to.
#
#  For example, update_light('green') should return 'yellow'.
#

# Best Practices => 6 Clever => 11
def update_light(current)
  {"green" => "yellow", "yellow" => "red", "red" => "green"}[current]
end

# Best Practices => 2
def update_light(current)
  if current == 'green'
    'yellow'
  elsif current == 'yellow'
    'red'
  elsif current == 'red'
    'green'
  end
end

# not for all ruby versions
def update_light(current)
  case current
  when 'green'
    'yellow'
  when 'yellow'
    'red'
  when 'red'
    'green'
  end
end
