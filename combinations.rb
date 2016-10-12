# INSTRUCTIONS
# method takes two arrays of strings
# returns an array of new strings
# each string is a combination of item in first array with item in second array

# APPROACH
# initialize new array
# I'm going to need 2 nested iterators which will combine the strings using "each"
# and finally return the new array

def combinations(arr1, arr2)
	combined_array = []
	arr1.each do |first_string|
		arr2.each do |second_string|
			new_word = first_string + second_string
			combined_array.push(new_word)
		end
	end
	puts combined_array
end

arr1 = ["on","in"]
arr2 = ["to", "rope"]

combinations(arr1, arr2)