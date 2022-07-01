# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

# @param {Integer} n
# @return {Integer}
def first_bad_version(n)
  left = 1
  right = n
  
  bv_api_cache = Hash.new()
  
  while (left <= right) 
    i = (left + right) / 2
    
    # p [i, bv_api_cache]
    is_bad = is_bad_version_with_cache(i, bv_api_cache)

    offset = (right - left) / 2
    offset = 1 if offset == 0
    if !is_bad
      left += offset
    else
      return i if i == 1 || !is_bad_version_with_cache(i - 1, bv_api_cache)
      right -= offset
    end
  end
  
end

def is_bad_version_with_cache(i, cache)
  cache[i] = is_bad_version(i) unless cache.has_key?(i)
  return cache[i]
end
  
  