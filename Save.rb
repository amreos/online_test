class Save
require 'tempfile'
require 'fileutils'

def read
	@y = Time.now.to_f
	@s = Time.now.to_i
@array = []
@x = 0
	path = File.join('', 'file.txt')
	file = File.open(path, 'r')
	file.each_line do |line|
		@array << line
end
		puts "Maximum number is"
		f = @array.flatten.collect { |i| i.to_f }
		@max = f.sort.last
		puts  @max
		total = f.reduce(:+)
		len = @array.length
		@mean = total.to_f / len
		puts "The avarege of the numbers is "
		puts  @mean
		puts "Total parssed numbers is "
		puts @array.length
		

 end


def write
	@x = Time.now.to_f
	@e = Time.now.to_i
	@time_micro = @x-@y
	@time_second = @e-@s
	temp_file = Tempfile.new('foo')
	path1 = File.join('', 'result.txt')
begin
  File.open(path1, 'w') do |file| 	
   temp_file.puts "Maximum number is " 
   temp_file.puts @max 
   temp_file.puts  "and mean is " 
   temp_file.puts  @mean
   temp_file.puts  "Total parsed numbers " 
   temp_file.puts  @array.size
   temp_file.puts  "Response time in microsecond " 
   temp_file.puts  @time_micro
   temp_file.puts  "Response time in second " 
   temp_file.puts  @time_second
  end
  temp_file.close
  FileUtils.mv(temp_file.path, path1)
ensure
  temp_file.close
  temp_file.unlink
end
puts "Response time in microsecond "
puts @time_micro
puts "Response time in second "
puts @time_second
end
#end of the class next line
end

j = Save.new
j.read
j.write