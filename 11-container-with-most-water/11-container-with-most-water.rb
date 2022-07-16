# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  max_area = 0
  l = 0
  r = height.length - 1
  while (l < r)
    area = [height[l], height[r]].min * (r - l)
    max_area = [area, max_area].max
    if height[l] < height[r]
      l += 1
    else
      r -= 1
    end
  end
  max_area
end