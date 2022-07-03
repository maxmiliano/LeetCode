# @param {Integer[]} nums
# @return {Integer}
def array_pair_sum(nums)
  sorted = nums.sort
  sum = 0
  (0...sorted.length).step(2).each do |i|
    sum += [sorted[i], sorted[i+1]].min
    # p [i, sorted[i], sorted[i+1]]
  end
  sum
end
