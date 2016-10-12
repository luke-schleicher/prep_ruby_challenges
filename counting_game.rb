# INSTRUCTIONS
# 10 friends sit in a circle and count from 1 to 100.
# When the number is divisible by 7, they switch directions
# When the number is divisible by 11, they skip the next person
# Find who says the number "100"

# APPROACH
# create a while loop that continues until num == 100
# inside that loop create a variable, person
# person will begin at 1
# when one loop finishes, it will increment
# when person equals anything larger than 10, we will subtract 10 from it
# when person equals anything smaller than 1, we will add 10 to it
# also inside that while loop, call a method called count direction 
# that decides whether to increment or decrement person
# this count direction method will check if num if divisible by 7
# it will also check if num if divisible by 11, and skip if necessary
# the main method will puts the person at the end

def counting_game(num_players, final_num)
	player = 1
	num = 1
	reversed = false
	while num <= final_num

		puts "Player: #{player}"
		puts "Num: #{num}"

		if num % 7 == 0
			reversed == false ? reversed = true : reversed = false
		end

		if num % 11 == 0
			increment = 2
		else
			increment = 1
		end

		if reversed
			player -= increment
		else
			player += increment
		end

		if player > num_players
			player -= num_players
		end

		if player < 1
			player += num_players
		end

		num += 1

	end
end

counting_game(10, 100)

