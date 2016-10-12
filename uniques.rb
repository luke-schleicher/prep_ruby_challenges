# INSTRUCTIONS
# method takes an array of items
# return that array without duplicates
# without Ruby's "uniq" method

# HOW I'LL DO THIS
# Take array
# Def new array
# use an enumerable method, perhaps "include?"
# call include? on new array, if false, push item to new array

def uniques(array)
	unique_array = []
	array.each do |item|
		if !unique_array.include?(item)
			unique_array.push(item)
		end
	end
	puts unique_array
end

array = [1,5,"frog",2,1,3,"frog"]

uniques(array)