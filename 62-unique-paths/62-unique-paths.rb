# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def unique_paths(m, n)
  return 1 if (m == 1 || n == 1)
  
  cache = Array.new(m+1) { Array.new(n+1) }
  
  return unique_paths_with_cache(cache, m - 1, n) + unique_paths_with_cache(cache, m, n - 1)
  
end

def unique_paths_with_cache(cache, m, n)
  return 1 if (m == 1 || n == 1)
  
  cache[m][n] = unique_paths_with_cache(cache, m - 1, n) + unique_paths_with_cache(cache, m, n - 1) if cache[m][n].nil?
  
  return cache[m][n]
end