def stock_picker(prices)
  # Handle edge cases: empty array or single element
  return nil if prices.empty? || prices.size == 1

  # Initialize variables for best buy and sell days
  best_buy_day = 0
  best_sell_day = nil
  max_profit = 0

  # Iterate through each day's price
  prices.each_with_index do |price, day|
    # Check if potential profit is greater than current max
    potential_profit = price - prices[best_buy_day]
    if potential_profit > max_profit && day > best_buy_day
      max_profit = potential_profit
      best_sell_day = day
    end

    # Update best buy day if a lower price is found
    best_buy_day = day if price < prices[best_buy_day]
  end

  # Return the best buy and sell days as an array
  [best_buy_day, best_sell_day]
end


prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
p stock_picker(prices)  

prices = [1, 2, 3, 4, 5]
p stock_picker(prices)  

prices = [7, 6, 5, 4, 3, 2, 1]
p stock_picker(prices)  

prices = [10, 10]
p stock_picker(prices) 