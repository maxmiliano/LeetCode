# @param {Integer[]} nums
# @return {Integer[]}
def sorted_squares(nums)
  nums.map {|n| n ** 2}.sort 
end