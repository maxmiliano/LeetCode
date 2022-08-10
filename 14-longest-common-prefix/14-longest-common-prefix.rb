# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  strs.sort!
  
  first = strs.first
  last = strs.last
  
  size = [first.length, last.length].min
  
  prefix = ""
  size.times do |i|
    if first[i] == last[i]
      prefix << first[i]
    else
      break
    end
  end
  return prefix
end