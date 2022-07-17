# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  (0..(nums.size - 2)).each do |i|
    pair_index = nums.rindex(target - nums[i])
    return [i, pair_index] unless (pair_index.nil? || i == pair_index)
  end
end