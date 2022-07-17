# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  visited = Hash.new
  nums.each_with_index do |n, i| 
    if (visited.has_key?(target - n))
      return [visited[target - n], i] 
    else
      visited[n] = i
    end
  end
end