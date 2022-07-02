# @param {Integer[]} nums
# @return {Integer[]}
def sorted_squares(nums)
  squares = nums.map {|n| n ** 2}
  squares.sort 
end