# @param {Integer[][]} image
# @param {Integer} sr
# @param {Integer} sc
# @param {Integer} color
# @return {Integer[][]}
def flood_fill(image, sr, sc, color)
  if image[sr][sc] != color
    color_to_fill = image[sr][sc]
    image[sr][sc] = color
    fill_neighbors(image, sr, sc, color_to_fill, color)
  end
  return image
end

def fill_neighbors(image, sr, sc,  color_to_fill, color)
    flood_fill(image, sr+1, sc, color) if (sr < (image.length - 1) && image[sr+1][sc] == color_to_fill)
    flood_fill(image, sr-1, sc, color) if (sr > 0 && image[sr-1][sc] == color_to_fill)
    flood_fill(image, sr, sc+1, color) if (sc < (image[0].length - 1) && image[sr][sc+1] == color_to_fill)
    flood_fill(image, sr, sc-1, color) if (sc > 0 && image[sr][sc-1] == color_to_fill) 
end