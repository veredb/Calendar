
def calendar(m, y)          # This function wrapes the whole program

def start_month(m, y)                # Zellers congruence
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
end       # end of start_month


day_in_month = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]  # Array for the  months - how many days in each month

days = ["Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"]  # Array of day names 

months = {1=>"January", 2=>"February", 3=>"March", 4=>"April", 5=>"May", 6=>"June", 7=>"July", 8=>"August", 9=>"September", 10=>"October", 11=>"November", 12=>"December"}



months.each do |num,mon|                        #prints the titles for desired month and year
   if num == m
      print "\t" + "\t" + months[num] + " "
   end
end
puts y

days.each do |a|                               # prints the Su, Mo, Tu, W, Th, F, Sa
   print a + "\t"
end

for x in 1..7 do                              # prints the empty line under Su, Mo, T.....
  if x % 7 == 0
     puts "\t"
  else 
     print "\t"
  end
end
s_m = start_month(m, y) - 1  # number of spaces before the starting day of month

for x in 1..s_m do    # prints the spaces before the 1 2 3 4 ..... prints where the day starts
   print "\t"
end
feb_in_leap_year = 0
if (m == 2 && y%4 == 0 && y%100 == 0 && y%400 == 0)
  feb_in_leap_year = 1
end
for days in 1..(day_in_month[m] + feb_in_leap_year) do        # prints the actual days
  if(s_m + days) % 7 == 0
     puts days
  else
    print days, "\t"
  end
end
print "\n"
end                         #end of calendar
