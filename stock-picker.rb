def stock_picker(prices)

	day = 0
	low = 0
	high = 0
	max_profit = 0

	while (day < prices.length)
		buy = prices[day]

		(day..prices.length-1).each do |tomorrow|
			sell = prices[tomorrow]
			profit = sell - buy

			if profit > max_profit
				max_profit = profit
				low = prices.index(buy)
				high = prices.index(sell)
			end
		end

		day += 1
	end

	
	puts "#{[low, high]}"
	puts "You made a profit of $#{prices[high]} - $#{prices[low]} == $#{prices[high] - prices[low]}"


	# Loop through the numbers
	# Find lowest number MIN
	# Find difference between lowest numbers and largest number coming after
	# Do the same with second lowest number
	# Print the result of the largest different
end


stock_picker([17,3,6,9,15,8,6,1,10])