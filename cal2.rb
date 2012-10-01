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

  
  
def month_year_title(m, y)          # This function returns the title of month and year
  str = ""
  months = {1=>"January", 2=>"February", 3=>"March", 4=>"April", 5=>"May", 6=>"June", 7=>"July", 8=>"August", 9=>"September", 10=>"October", 11=>"November", 12=>"December"}
  months.each do |num,mon|     
     if num == m
        str +=  "\t" + "\t" + months[num] + " "
       end
  end
  str +=  y.to_s + "\n"
  str
end


def days_of_week_in_line             # This function returns the line of the days Su Mo Tu.....
  str = ""
  days = ["Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"]
  days.each do |a|     
     str += a + "\t"
  end
  str
end
  
def empty_line    # This function returns an empty line under Su Mo Tu.....
  str = ""
  for x in 1..7 do     
    if x % 7 == 0
       str += "\n"
    else 
       str +=  "\t"
    end
  end
  str
end

def the_days(m, y)            # This function returns the starting day of week and the number of days in a month(checks for leap year)

  day_in_month = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  str =""
  dow = day_of_week_of_start(m, y) - 1  # number of spaces before the starting day of month
  
  for x in 1..dow do    # prints the spaces before the 1 2 3 4 ..... prints where the day starts
     str += "\t"
  end
  feb_in_leap_year = 0
  if (m == 2 && y%4 == 0 && y%100 == 0 && y%400 == 0)      #checks for leap year
    feb_in_leap_year = 1
  end
  for days in 1..(day_in_month[m] + feb_in_leap_year) do
    if(dow + days) % 7 == 0
       str += days.to_s + "\n"
    else
      str +=  days.to_s + "\t"
    end
  end
  str += "\n"
  str
end

def print_calendar(m, y)
   day_of_week_of_start(m, y)
   print month_year_title(m, y)
   print days_of_week_in_line
   print empty_line
   print the_days(m, y)
end 
