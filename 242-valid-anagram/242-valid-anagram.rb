# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  
  return false unless s.length == t.length
  
  s.chars.sort == t.chars.sort
end