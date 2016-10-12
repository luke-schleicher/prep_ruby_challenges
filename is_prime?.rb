# INSTRUCTIONS
# method takes a number
# returns true if the number is prime

# APPROACH
# I'll know for sure that a number is prime if it has no factors
# I can check if the number has any factors by iterating from 2 up to the number
# If the original number can be evenly divided by the iterated number, then I'll know it's not prime
# Otherwise, it is prime!
# Let's do this!

def is_prime?(num)
	prime = true
	2.upto(num - 1) do |i|
		if num % i == 0
			prime = false
		end
	end
	puts prime
end

is_prime?(7)
is_prime?(14)