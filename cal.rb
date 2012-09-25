#require test_for_cal.rb
m= ARGV[0].to_i
y= ARGV[1].to_i
def start_month(m, y)       # Zellers congruence
  if m == 1 || m == 2 
    m = m + 12
    y = y - 1
  end 
  return   h = (1 + (26 * (m +1) / 10).floor + y + (y / 4).floor + 6 * (y / 100).floor + (y / 400 ).floor) % 7
   if h == 0
      return   h =7 
   end
end
s_m = start_month(m, y) - 1  # number of spaces before the starting day of month
day_in_month = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
days = ["Su", "Mo", "T", "W", "Th", "F", "Sa"]


days.each do |a|     # prints the Su, Mo, Tu, W, Th, F, Sa
   print a + "\t"
end

for x in 1..7 do     # prints the empty line under Su, Mo, T.....
  if x % 7 == 0
     puts "\t"
  else 
     print "\t"
  end
end
for x in 1..s_m do    # prints the spaces before the 1 2 3 4 ..... prints where the day starts
   print "\t"
end
feb_in_leap_year = 0
if m == 2 && (y%4 == 0 || (y%100 == 0 && y%400 == 0))
  feb_in_leap_year = 1
end
for days in 1..(day_in_month[m] + feb_in_leap_year) do
  if(s_m + days + feb_in_leap_year) % 7 == 0
    puts days
  else
    print days, "\t"
  end
end
print "\n"
