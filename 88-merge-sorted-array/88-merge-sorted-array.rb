# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
  n1 = nums1.first(m)
  n2 = nums2.first(n)
#   p [a1, a2]
#   merged = merge_sorted(a1, a2)

  i = 0
  j = 0
  0.upto(m + n - 1) do |k|
    if n2[j].nil? || ((i < m) && (n1[i] <= n2[j]))
      nums1[k] = n1[i]
      i += 1
      k += 1
    elsif (j < n)
      nums1[k] = n2[j]
      j += 1
      k += 1
    end
  end

end
