# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  max = 0
  
  prices.each_with_index do |price, idx|
    next if idx == 0

    if price > prices[idx-1]
      max += price - prices[idx-1]
    end
  end

  max
end