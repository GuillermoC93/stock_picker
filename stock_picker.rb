def stock_picker(stocks)
  final_profit = 0
  buy_sell_days = []

  # loop over array twice
  stocks.each_with_index do |buy_price, buy_day|
    stocks.each_with_index do |sell_price, sell_day|
      # determine the eligible dates and prices and calculate
      # the profit for each
      if buy_day < sell_day && buy_price < sell_price
        profit = sell_price - buy_price
        # assign profit to final_profit and push to final array
        # making sure to clear the previous profit amounts to only
        # keep the largest in the end
        if profit > final_profit
          final_profit = profit
          buy_sell_days.clear
          buy_sell_days.push(buy_day, sell_day)
        end
      end
    end
  end
  buy_sell_days
end

p stock_picker([17,3,6,9,15,8,6,1,10])