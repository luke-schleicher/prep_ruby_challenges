# will take a number
# return the product of every number up to and including that number

def factorial(num)
	product = 1
	1.upto(num) do |i|
		product *= i
	end
	puts product
end

factorial(5)