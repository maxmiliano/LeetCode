# @param {Integer[]} nums
# @return {Integer[]}
def running_sum(nums)
    nums.inject([]) { |arr, x| (arr.empty?) ? arr << x : arr << (x + arr.last) }
end