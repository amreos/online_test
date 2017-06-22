class Stack
	def main
		@array = []
	puts "please enter numbers"
	while true
  	input = gets.chomp
  	break if input.empty?
  	@array << input
  	@@passed = @array
  	 
		end
	end
	
	def push
	array =  "Original Array is " + "[" + @array.join(",") + "]"
	puts array
end

	def pop
		array = @array.reverse.join(",")
		puts "Reversed Array is " + "[" + array + "]"
	end

	def max
		x = @array
		f = x.flatten.collect { |i| i.to_f }
		max = f.sort.last
		puts "Maximum number is "
		puts  max
	end

	
end	

x = Stack.new
x.main
x.max
puts "plese enter p for push or po for pop"
choise = 1
until choise == ("p" || "po")
choise = gets.chomp
if choise == "p"
	x.push
elsif choise == "po"
	x.pop
	break
else
	puts "please enter valid choise"
end
end

