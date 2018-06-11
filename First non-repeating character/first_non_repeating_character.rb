#  http://www.codewars.com/kata/first-non-repeating-character/ruby
#  Task: First non-repeating character

#  Write a function named firstNonRepeatingLetter† that takes a string input, and returns the first character that is not repeated anywhere in the string.

#  For example, if given the input 'stress', the function should return 't', since the letter t only occurs once in the string, and occurs first in the string.

#  As an added challenge, upper- and lowercase letters are considered the same character, but the function should return the correct case for the initial letter. For example, the input 'sTreSS' should return 'T'.

#  If a string contains all repeating characters, it should return the empty string ("").

#  † Note: the function is called firstNonRepeatingLetter for historical reasons, but your function should handle any Unicode character.

# Best Practices => 23 Clever => 24
def first_non_repeating_letter(s)
  s.chars.find {|i| s.downcase.count(i)==1 || s.upcase.count(i)==1} || ""
end

# Best Practices => 4 Clever => 1
def  first_non_repeating_letter(s)
  s.each_char do |char|
    return char if s.downcase.count(char.downcase) == 1
  end
  ""
end

# Best Practices => 2 Clever => 1
def first_non_repeating_letter(s)
  letter = s.downcase.chars.find { |c| s.downcase.count(c) == 1 }
  s[/#{letter}/i]
end

# Best Practices => 1 Clever => 0
def first_non_repeating_letter(s)
  s.chars.keep_if { |c| s.upcase.count(c.upcase).eql?(1) }[0] || ''
end

def  first_non_repeating_letter(s)
  s.chars.each {|x| return x if s.scan(/#{x}/i).count==1}
  return ""
end

def  first_non_repeating_letter(s)
  s.chars.select { |a| s.downcase.count(a.downcase) == 1 }.first || ''
end
