def day_of_week_of_start(m, y)       # Zellers congruence
  if m == 1 || m == 2 
    m = m + 12
    y = y - 1
  end 
   h = (1 + (26 * (m +1) / 10).floor + y + (y / 4).floor + 6 * (y / 100).floor + (y / 400 ).floor) % 7
   if h == 0
      h = 7 
      return h
   else
      return h
   end
end

  str = ""
#  day_in_month = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  
#  days = ["Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"]
  
#  months = {1=>"January", 2=>"February", 3=>"March", 4=>"April", 5=>"May", 6=>"June", 7=>"July", 8=>"August", 9=>"September", 10=>"October", 11=>"November", 12=>"December"}
  
  
def print_month_year(m, y)
  
  months = {1=>"January", 2=>"February", 3=>"March", 4=>"April", 5=>"May", 6=>"June", 7=>"July", 8=>"August", 9=>"September", 10=>"October", 11=>"November", 12=>"December"}
  months.each do |num,mon|     #prints the desired month and year
     if num == m
#        str +=  "\t" + "\t" + months[num] + " "
        return months[num]
     end
  end
  str +=  y.to_s + "\n"
end


def print_days_of_week_in_line  
  days = ["Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"]
  days.each do |a|     
#     str += a + "\t"
  end
end
  
  for x in 1..7 do     # prints the empty line under Su, Mo, T.....
    if x % 7 == 0
       str += "\t\n"
    else 
       str += "\t"
    end
  end

def the_days(m, y)
  day_in_month = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  str =""
  dow = day_of_week_of_start(m, y) - 1  # number of spaces before the starting day of month
  
  for x in 1..dow do    # prints the spaces before the 1 2 3 4 ..... prints where the day starts
     str += "\t"
  end
  feb_in_leap_year = 0
  if (m == 2 && y%4 == 0 && y%100 == 0 && y%400 == 0)
    feb_in_leap_year = 1
  end
  for days in 1..(day_in_month[m] + feb_in_leap_year) do
    if(dow + days) % 7 == 0
       str += days.to_s + "\n"
    else
      str +=  days.to_s + "\t"
    end
  end
  return days
  str += "\n"
  str
end
#calendar(ARGV[0].to_i,ARGV[1].to_i)
