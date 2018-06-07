#  https://www.codewars.com/kata/simple-pig-latin/ruby
#  Task: Simple Pig Latin

#  Move the first letter of each word to the end of it, then add "ay" to the end of the word. Leave punctuation marks untouched.

#  Examples
#  pig_it('Pig latin is cool') # igPay atinlay siay oolcay
#  pig_it('Hello world !')     # elloHay orldWay !

# Best Practices => 55 Clever => 166
def pig_it text
  text.gsub(/(\w)(\w+)*/, '\2\1ay')
end

# Best Practices => 3 Clever => 4
def pig_it(text)
  text.gsub(/(\w)(\w+)?/, '\2\1ay')
end

# Best Practices => 9 Clever => 6
def pig_it text
  text.split.map{|word| word =~ /\w/ ? "#{word[1..-1]}#{word[0]}ay" : word}.join(" ")
end
