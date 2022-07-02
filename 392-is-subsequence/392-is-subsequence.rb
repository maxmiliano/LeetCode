# @param {String} s
# @param {String} t
# @return {Boolean}
def is_subsequence(s, t)
  tj = []
  i = 0
  previous_i = -1
  0.upto(t.length - 1) do |j|
    if (s[i] == t[j])
      tj.push(j) if s[i] == t[j]
      i += 1
    end
  end
  return (tj.length == s.length) && (tj == tj.sort)
end