# @param {String} s
# @param {String[]} words
# @return {Integer[]}
def find_substring(s, words)
  word_length = words.first.length
  substring_size = word_length * words.length
  
  i = 0
  sol = []
  
  while (i <= s.length - substring_size)
    sub = s[i, substring_size]
    sub_array = split_string(sub, word_length)
    # p [i, sub, sub_array]
    sol << i if are_equal(sub_array, words)
    i += 1
  end
  

  return sol
end

def split_string(string, size)
  (string.length / size)
    .times
    .collect { |i| string[i * size, size]}
end

def are_equal(arr1, arr2)
  
  # check size
  return false unless (arr1.length == arr2.length)
  
  # p [arr1, arr2]
  
  # sort to make comparison easier
  arr1.sort!
  arr2.sort!
    
  # check each elemment
  0.upto(arr1.length - 1).each do |i|
    return false unless arr1[i] == arr2[i]
  end
  
  return true
  
end