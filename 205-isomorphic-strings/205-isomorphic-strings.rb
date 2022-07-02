# @param {String} s
# @param {String} t
# @return {Boolean}
def is_isomorphic(s, t)
  
  return false if s.length != t.length
  
  hash_s = Hash.new(0)
  hash_t = Hash.new(0)
  
  0.upto(s.length - 1) do |i|
    hash_s[s[i]] += 1
    hash_t[t[i]] += 1
    
    return false if (hash_s.values != hash_t.values)
  end
  
  return (hash_s.values == hash_t.values)
  
end