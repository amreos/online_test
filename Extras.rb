require_relative 'Stack'

class Extras < Stack
	
	def mean
		a = @@passed
		arr = a.flatten.collect { |i| i.to_f }
		total = arr.reduce(:+)
		len = a.length
		mean = total.to_f / len
		puts "The avarege of the numbers is "
		puts  mean
	
	end	

end
x = Extras.new
x.mean