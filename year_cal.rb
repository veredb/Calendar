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


def year_title(y)                     #this function returns the year
  return "\t\t\tyear\t" +  y.to_s
end


def  month_title(j)          # This function returns the title of month 
  str =""
  months = [0, "January", "Febuary", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
  for month in j..(j+2)
    numspaces = (20-months[month].length)/2
    if (month > j)
      str += "    "
    end
    str += " "*numspaces + months[month] + " "*numspaces
  end
  str += "\n"   
  str
end


 def days_of_week_in_line             # This function returns the line of the days Su Mo Tu.....
   str = ""
   days = ["Su", "Mo", "Tu", "We", "Th", "Fr", "Sa   "]
   for i in 1..3 do
      days.each do |a|     
        str += a + " "
      end
    end
   str += "\n"
   str
 end

def first_line(j, y)       #This function returns the first line in the calendar
  str= ""
  for m in j..(j+2) do
    dow = day_of_week_of_start(m, y) - 1  # number of spaces before the starting day of month
    for x in 1..dow do    # prints the spaces before the 1 2 3 4 ..... prints where the day starts
      str += "   "
    end
    for n in 1..(7-dow)
      str +=  n.to_s + "  " 
    end
    str += "\t"
  end
  str += "\n"
  str
end

def next_line(j, y, n)      #This function returns all the lines in the calendar
  str= ""
  day_in_month = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  for m in j..(j+2) do
    dim = day_in_month[m]
    if (m == 2 && (y%4 == 0 || (y%100 == 0 && y%400 == 0)))
      dim += 1
    end
    dow = day_of_week_of_start(m, y)- 1   # 
    for days in (n-dow+1)..(n+7-dow)
      if days <= dim
        if days < 10                       # This checks for double numbers: if it's < 10 make two spaces else one space
          str +=  days.to_s + "  " 
        else 
          str += days.to_s + " "
        end
      else
        str += "   "
      end
    end
    str += "\t"
  end
   
  str += "\n"
  str
end
def print_year(y)                       #This function prints all the functions to give the calendar
  puts year_title(y)
  j = 1
 while j<=12 do
  print month_title(j)
  print days_of_week_in_line
  print first_line(j, y)
  print next_line(j, y, 7)
  print next_line(j, y, 14)
  print next_line(j, y, 21)
  print next_line(j, y, 28)
  print next_line(j, y, 35)
  j += 3
 end
end


