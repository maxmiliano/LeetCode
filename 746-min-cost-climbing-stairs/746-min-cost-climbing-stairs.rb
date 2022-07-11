# @param {Integer[]} cost
# @return {Integer}
def min_cost_climbing_stairs(cost)
  
  cache = Hash.new
  
  return [min_from(cache, cost, 0), min_from(cache, cost, 1)].min
end

def min_from(cache, cost, i)
  return 0 if i > cost.length - 1
  cache[i+1] = min_from(cache, cost, i+1) unless cache.include?(i + 1)
  cache[i+2] = min_from(cache, cost, i+2) unless cache.include?(i + 2)
  cache[i] = cost[i] + [cache[i+1], cache[i+2]].min
  # p [i, cache]
  return cache[i]
  
end