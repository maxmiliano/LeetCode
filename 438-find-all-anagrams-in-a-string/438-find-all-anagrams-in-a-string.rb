# @param {String} s
# @param {String} p
# @return {Integer[]}
def find_anagrams(s, p)
  sol = Array.new
  
  # Initialize hash of char count for p
  p_hash = {}.tap do |chars|
    ('a'..'z').to_a.each do |c|
      chars[c] = 0
    end
  end
  
  # populate p_hash with char counts
  p.chars.each do |pc|
    p_hash[pc] += 1
  end
  
  # initialize w_hash (window hash) 
  w_hash = {}.tap do |chars|
    ('a'..'z').to_a.each do |c|
      chars[c] = 0
    end
  end
  
  # count chars for first window
  s[0..(p.length - 1)].chars.each do |sc|
    w_hash[sc] += 1
  end
  
  # base case (is first window is a p anagram?)
  sol << 0 if (w_hash == p_hash)
  
  # Kernel.p ["p >>>", p_hash.values.map(&:to_s).join]
  
  # Kernel.p [0, sol, w_hash.values.map(&:to_s).join]
  # slide window untill s end and add index to sol if window is p anagram
  1.upto(s.length - p.length).each do |i|
    w_hash[s[i-1]] -= 1
    w_hash[s[i + p.length - 1]] += 1
    sol << i if (w_hash == p_hash)
    # Kernel.p [i, sol, w_hash.values.map(&:to_s).join]
  end

  sol
  
end