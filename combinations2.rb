# TASK
# Write a method that takes 2 arrays of strings
# Returns 1 array with all of the combinatiosn of the items in them

# APPROACH
# Create 2 each loops, one nested inside another
# Iterate over items and select them
# Concatenate items and push to new array

def combinations(arr1,arr2)
	new_array = []
	arr1.each do |i|
		arr2.each do |j|
			new_array.push(i + j)
		end
	end
	puts new_array
end

arr1 = ["on", "in"]
arr2 = ["to", "rope"]

combinations(arr1,arr2)