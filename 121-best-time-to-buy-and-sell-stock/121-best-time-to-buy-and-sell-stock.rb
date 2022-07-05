# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  
  min_price = 10 ** 4
  max_profit = 0
  
  prices.each do |p|
    min_price = p if p < min_price
    
    if p > min_price
      max_profit = [max_profit, p - min_price].max
    else 
      min_price = p
    end
  end
  
  return max_profit
  
end