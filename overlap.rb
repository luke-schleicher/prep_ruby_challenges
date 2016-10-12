# INSTRUCTIONS
# method takes two rectangles
# defined by the coordinates of their corners
# for example => [[0,0],[3,3]] and [[1,1],[4,6]]
# I must determine whether the rectangles overlap
# all coordinates are positive ints
# it doesn't count if the edges only touch but don't cross

# APPROACH
# By definition, "overlapping" is when the 2 rectangles share an area
# I can detect if they share an area by splitting each large rectangle into many small cells
# If any of the bottom left coordinatees of the cells match, I will know that the rectangles overlap
# So first I need to generate an array of x and y cell coordinates for each rectangle
# then I can loop through the array of one rectangle
# and loop through the array of the other rectangle inside
# if any of the coordinates match, then the rectangles overlap

def overlap?(rect1, rect2)

	rect1_coords = coordinate_generator(rect1)
	rect2_coords = coordinate_generator(rect2)
	z = rect1_coords - rect2_coords

	if z == rect1_coords
		puts false
	else
		puts true
	end

end

def coordinate_generator(rect)

	rect_x_coord = []
	rect_y_coord = []
	y = rect[0][1]

	while y < rect[1][1]
		x = rect[0][0]
		while x < rect[1][0]
			rect_x_coord.push(x)
			rect_y_coord.push(y)
			x += 1
		end
		y += 1
	end

	combined_coords = rect_x_coord.zip(rect_y_coord)
	return combined_coords

end

rect1 = [[0,0],[3,3]]
rect2 = [[1,1],[4,5]]
rect3 = [[7,7],[9,9]]

overlap?(rect1,rect2)
