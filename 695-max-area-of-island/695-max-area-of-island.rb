# @param {Integer[][]} grid
# @return {Integer}
def max_area_of_island(grid)

  m = grid.length
  n = grid[0].length
  
  visited = Array.new(m) { Array.new(n) {false} }
  max_size = 0
  
  0.upto(m-1) do |i|
    0.upto(n-1) do |j|
      if (visited[i][j] == false && grid[i][j] == 1)
        size = island_size(i, j, grid, visited)
        max_size = [size, max_size].max
        # p [[i, j], size]
      end
      
    end
  end
  
  return max_size
  
end

def island_size(i, j, grid, visited)
  
  m = grid.length
  n = grid[0].length
  
  return 0 if (i < 0 || i >= m) || (j < 0 || j>= n) || grid[i][j] == 0 || visited[i][j] == true
  
  visited[i][j] = true
  
  adjacent_size = 0
  adjacent_size += island_size(i+1, j, grid, visited)  
  adjacent_size += island_size(i-1, j, grid, visited)
  adjacent_size += island_size(i, j+1, grid, visited)
  adjacent_size += island_size(i, j-1, grid, visited)
  return 1 + adjacent_size
  
end