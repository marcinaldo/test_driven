def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(array)
	sum = 0
	array.each {|item| sum += item}
	sum
end

def multiply(array)
	result = 1
	array.each {|item| result *= item}
	result
end

def power(a, b)
	a ** b
end

def factorial(num)
	if num == 0
		1
	else
		result = 1
		until num == 1 do
			result *= num
			num -= 1
		end
		result
	end
end

