#!/usr/bin/env ruby
# frozen_string_literal: true

def stock_picker(prices)
  min_price = prices[0]
  min_price_day = 0
  max_profit = 0
  best_days = [0, 0]

  prices.each_with_index do |price, day|
    if price < min_price
      min_price = price
      min_price_day = day
    elsif price - min_price > max_profit
      max_profit = price - min_price
      best_days = [min_price_day, day]
    end
  end

  best_days
end

# examples

pp stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10]) # => [1,4]
pp stock_picker([]) # => [0,0]
pp stock_picker([10]) # => [0,0]
pp stock_picker([10, 10, 10, 10]) # => [0,0]
pp stock_picker([10, 9, 8, 7]) # => [0,0]
pp stock_picker([1, 2, 3, 4]) # => [0,3]
pp stock_picker([10, 1]) # => [0,0]
pp stock_picker([1, 10]) # => [0,1]
