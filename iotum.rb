# 1. Write a function that prints the numbers from 1 to 100. But for multiples of three print “Foo” instead of the number and for the multiples of five print “Bar”. For numbers which are multiples of both three and five print “FooBar”.

# Example output:

# 1 2 Foo 4 Bar Foo 7 8 Foo Bar 11 Foo 13 14 FooBar …


# 2. Write a function that counts the number of even numbers that appear in a range of integers 0..n, where n is supplied as the sole argument to your function.

# Example:

# even_integers(3)
# 2


# 3. Given the following pseudo code, what is the range of possible values for “a” in your language of choice:

# x = random_int(1,6)
# y = random_int(1,6)
# z = random_int(1,6)
# a = x + y + z


# 4. Given:

# words = ['one', 'one', 'two', 'three', 'three', 'two']

# Remove the duplicates.


# 5. Print to stdout the following output using only one loop:

# 1 1 1 1 1
# 2 2 2 2 2
# 3 3 3 3 3
# 4 4 4 4 4
# 5 5 5 5 5


# 6. Write a method that finds the largest sum of consecutive entries in an array given a group size.  It should take an array and the interval size as inputs and should return both the largest sum and the index of the first entry in the group. 

# For example, in the following Array [1,1,1,1,1,1,1,2] given a group size of 2 the result would be a maximum sum of 3 and a position of 6.


#1
def foo_bar
	(1..100).each do |x|
		if (x % 3 == 0) && (x % 5 == 0)
			puts "FooBar"
		elsif (x % 3 == 0)
			puts "Foo"
		elsif (x % 5 == 0)
			puts "Bar"
		else
			puts x
		end
	end
end


#2 
def even_numbers(max) # max will be n
	even_array = []
	(1..max).each do |x|
		if (x % 2 == 0)
			even_array << x
		end
	end
	puts even_array.length
end


#3 the range of possible integer values for a is 3-18 in Ruby
def random
	x = rand(1..6)
	y = rand(1..6)
	z = rand(1..6)
	a = x + y + z
	
	puts a
end


# 4 So ruby makes this too easy

def remove_duplicates_easy(array)
	puts array.uniq
end

def remove_duplicates_less_easy(array)
	unique_values = []
	array.each do |x|
		if unique_values.include?(x) == false
			unique_values << x
		end
	end
	puts unique_values
end


# 5

def output
	for i in (1..5)
		puts (i.to_s * 5)
	end
end


# 6

def largest_sum(array, interval)
	largest_sum_value = 0
	largest_sum_position = 0

	array.each_with_index do |value, position|
		new_value = (value.to_i + array[position+1].to_i)
			if new_value > largest_sum_value
				largest_sum_value = new_value
				largest_sum_position = position
			end
		end
	puts "The largest sum of values is #{largest_sum_value} at position #{largest_sum_position}"
end

# foo_bar
# even_numbers(100)
# random
# remove_duplicates_less_easy(['one', 'one', 'two', 'three', 'three', 'two'])
# output
# largest_sum([1,1,1,1,1,1,1,2], 2)
