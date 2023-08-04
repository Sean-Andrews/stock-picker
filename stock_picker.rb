def stock_picker(arr)
  profit = 0
  best_days = []
  arr.each_with_index do |starting_price, buy_day|
    arr.each_with_index do |final_price, sell_day|
      next if sell_day <= buy_day
      if final_price - starting_price >= profit
        profit = final_price -starting_price
        best_days[0] = buy_day
        best_days[1] = sell_day
      end
    end
  end
  p best_days
end



stock_picker([17,3,6,9,15,8,6,1,10])