# @param {Integer[][]} box_types
# @param {Integer} truck_size
# @return {Integer}
def maximum_units(box_types, truck_size)
  
  sorted_boxes = box_types.sort_by { |t| - t[1] }

  space_available = truck_size
  units_loaded = 0
  boxes_loaded = 0
    
  sorted_boxes.each do |box|
    if (space_available >= box[0])
      space_available -= box[0]
      units_loaded += box[1] * box[0]
    else
      units_loaded += space_available * box[1]
      space_available = 0
    end
    
    break if space_available == 0
  end
  
  return units_loaded 
    
end