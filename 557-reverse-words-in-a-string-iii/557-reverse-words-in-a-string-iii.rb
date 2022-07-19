# @param {String} s
# @return {String}
def reverse_words(s)
  s.split(" ").each.map do |word|
    word.reverse
  end.join(" ")
end