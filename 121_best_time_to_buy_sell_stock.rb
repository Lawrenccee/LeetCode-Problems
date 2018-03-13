# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  max = 0
  min_price = nil
  
  prices.each do |num|
    if min_price.nil? || num < min_price
      min_price = num
    elsif num - min_price > max
      max = num - min_price
    end
  end
  
  max
end