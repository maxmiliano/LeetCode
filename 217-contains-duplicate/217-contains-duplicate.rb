# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
    return (nums.length != nums.uniq.length)
end