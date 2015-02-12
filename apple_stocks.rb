# You have an array stock_prices_yesterday that contains the value of apple stocks at minute intervals starting at 9:30am.

# For example:
# stock_prices_yesterday[0] is the price of the stock at 9:30am
# stock_prices_yesterday[1] is the price of the stock at 9:31am
# stock_prices_yesterday[2] is the price of the stock at 9:32am
# etc

# Determine the greatest profit you could have made yesterday.

# Note that you can't just find the max and min of the array and subtract them becasue you cannot sell stock until you buy it.

def max_stock_profit(stock_prices)
	local_min = stock_prices[0]
	local_max = stock_prices[1]
	max_profit_so_far = local_max - local_min

	stock_prices[2..-1].each do |price|

		if local_max == nil || price > local_max
			local_max = price
			profit = local_max - local_min
			max_profit_so_far = profit if profit > max_profit_so_far

		# must 'reset' the max when the min is reset
		# I set the max to nil because you can't buy and sell
		# at the same time
		elsif price < local_min
			local_min = price
			local_max = nil 
		end 
		# log(local_min, local_max, max_profit_so_far)
	end
		return max_profit_so_far
end

def log(min, max, profit)
		puts "min: #{min}"
		puts "max: #{max}"
		puts "max_profit_so_far: #{profit}"
end 


#TESTS
stock_prices = [100, 200, 300, 700, 50, 20, 40, 600]
puts max_stock_profit(stock_prices) == 600