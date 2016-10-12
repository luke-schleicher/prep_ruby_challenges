# define a method power that takes base and exponent
# it will multiply base by base exponent times
# and return the result

def power(base, exponent)
	result = 1
	exponent.times do |i|
		result *= base
	end
	puts result
end

power(3,4)


