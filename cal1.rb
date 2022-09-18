# class Calender
#     def start(i, j)
# 		i = Time.new.year()
# 		j = Time.new.month()
# 		@n = 0
# 		  return i, j 
#     end
#     def  pre(i, j)
#     	@n-=1
#     	i=Time.new.year()
#     	j=Time.new.month()+@n
#     	if j==0
#     		return i-1, 12
#         end 
#         return i, j 
#     end
#     def next(i, j)
#     	@n +=1
#     	i = Time.new.year()
#     	j = Time.new.month()+@n
#     	if j == 13
#     		return i+1, 1
#     	end
#     	return i, j 
#     end
#  	def main(i, j)

# 		require 'date'
# 		date = Date.new(i,j,1)

# 		daysOfWeek = Date::ABBR_DAYNAMES.map { |x| " #{x}"}
# 		monthName = Date::MONTHNAMES[date.month]
#         #yearMonthStr = yMS
# 		 yMS = "#{date.year} - #{monthName}"

# 		cellLength = daysOfWeek.first.length
# 		lineLength = cellLength * daysOfWeek.length
# 		padding = lineLength / 2 -  yMS.length / 2

# 		puts  yMS.rjust(  yMS.length + padding, ' ')
# 		puts daysOfWeek.join("")

# 		currWeekDay = date.wday
# 		currMonth = date.month

# 		prevPadding = "".ljust( currWeekDay * cellLength, ' ')

# 		while date.month == currMonth

# 		  while currWeekDay < daysOfWeek.length and date.month == currMonth

# 		    dayStr = date.day.to_s.rjust(cellLength, ' ')
# 		    cell = "#{prevPadding}#{dayStr}"

# 		    prevPadding = ""
# 		    print cell

# 		    date = date + 1 
# 		    currWeekDay += 1
# 		  end

# 		  currWeekDay = 0
# 		  puts
# 		end

# 	end
# 	puts 

# end
# obj = Calender.new()
# i, j = obj.start(i, j)
# obj.main(i, j)
# puts 
# while true
#  	puts " old << 1 || 3 >> next "
#  	puts "out -- exit "
#  	x = gets.chomp
# 	 if x == "1"
# 		i, j = obj.pre(i, j)
# 		obj.main(i, j)
# 	end
# 	if x == "3"
# 		i, j = obj.next(i, j)
# 		obj.main(i, j)
# 	end
# 	if x =="out"
# 		break
# 	end
# end


#  long_string = %{
# It was the best of times,
# It was the worst of times.
# }
# puts long_string[0,1]

long_string = <<EOS
It was the best of times,
It was the worst of times.
EOS
puts long_string.lines.count