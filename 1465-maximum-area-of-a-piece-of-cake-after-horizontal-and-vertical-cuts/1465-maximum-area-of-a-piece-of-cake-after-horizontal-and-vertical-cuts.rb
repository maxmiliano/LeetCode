# @param {Integer} h
# @param {Integer} w
# @param {Integer[]} horizontal_cuts
# @param {Integer[]} vertical_cuts
# @return {Integer}
def max_area(h, w, horizontal_cuts, vertical_cuts)
  
  pices = Hash.new
  
  hcs = horizontal_cuts.sort << h
  vcs = vertical_cuts.sort << w
  
  hslices = [] # size of each horizontal slice
  hcs.each_with_index do |el, i|
    i == 0 ? hslices.push(el) : hslices.push(el - (hcs[i - 1]))
  end

  vslices = [] # size of each vertical slice
  vcs.each_with_index do |el, i|
    i == 0 ? vslices.push(el) : vslices.push(el -(vcs[i - 1]))
  end

  # p [hslices, vslices]
  
  return (hslices.max * vslices.max).modulo((10 ** 9) + 7)
  
end