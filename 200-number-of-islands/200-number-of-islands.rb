# @param {Character[][]} grid
# @return {Integer}
def num_islands(grid)
  
  m = grid.length
  n = grid[0].length
  
  visited = Array.new(m) { Array.new(n) { false } }
  islands = 0
  
  m.times do |i|
    n.times do |j|
      if !visited[i][j] && (grid[i][j] == "1")
        # p [i, j, "new island found"]
        visit_island(grid, visited, i, j, m, n)
        islands += 1
      end
    end
  end
  
  return islands
end

def visit_island(grid, visited, i, j, m, n)
  visited[i][j] = true
  
  # p [i, j, "visited"]
  
  visit_island(grid, visited, i+1, j, m, n) if ((i+1 < m) && (grid[i+1][j] == "1") && !visited[i+1][j])
  visit_island(grid, visited, i-1, j, m, n) if ((i-1 >= 0) && (grid[i-1][j] == "1") && !visited[i-1][j])
  visit_island(grid, visited, i, j+1, m, n) if ((j+1 < n) && (grid[i][j+1] == "1") && !visited[i][j+1])
  visit_island(grid, visited, i, j-1, m, n) if ((j-1 >= 0) && (grid[i][j-1] == "1") && !visited[i][j-1])  
end