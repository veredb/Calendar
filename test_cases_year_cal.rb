require './year_cal.rb'
require 'test/unit'


class TestYearCal < Test::Unit::TestCase
 
   def test_01_testing_zellers_congruence
        assert_equal(3, day_of_week_of_start(2, 2000))
   end

   def test_02_testing_zellers_congruence
        assert_equal(7, day_of_week_of_start(1, 2000))
   end

   def test_03_testing_zellers_congruence
        assert_equal(4, day_of_week_of_start(9, 1999))
   end
   
   def test_04_testing_year_title
        assert_equal("\t\tyear\t2000", year_title(2000))
   end

   def test_05_testing_year_title
        assert_equal("\t\tyear\t2080", year_title(2080))
   end
   def test_06_testing_month_title
        assert_equal("      January                Febuary                 March       \n", month_title(1))
   end

   def test_07_days_of_week_in_line
        assert_equal("Su Mo Tu We Th Fr Sa    Su Mo Tu We Th Fr Sa    Su Mo Tu We Th Fr Sa    \n", days_of_week_in_line)
   end

   def test_08_testing_first_line_method
        assert_equal("                  1  \t      1  2  3  4  5  \t         1  2  3  4  \t\n", first_line(1, 2000))
   end

   def test_09_testing_first_line_method
         assert_equal("         1  2  3  4  \t                  1  \t                  1  \t\n", first_line(1, 1997))         
   end

   def test_10_testing_next_line_method
         assert_equal("5  6  7  8  9  10 11 \t2  3  4  5  6  7  8  \t2  3  4  5  6  7  8  \t\n", next_line(1, 1997, 7))
   end
   def test_11_testing_next_line_method
         assert_equal("12 13 14 15 16 17 18 \t9  10 11 12 13 14 15 \t9  10 11 12 13 14 15 \t\n", next_line(1, 1997, 14))
   end
   def test_12_testing_next_line_method
         assert_equal("19 20 21 22 23 24 25 \t16 17 18 19 20 21 22 \t16 17 18 19 20 21 22 \t\n", next_line(1, 1997, 21))
   end
   def test_13_testing_next_line_method
         assert_equal("26 27 28 29 30 31    \t23 24 25 26 27 28    \t23 24 25 26 27 28 29 \t\n", next_line(1, 1997, 28))
   end
   def test_14_testing_next_line_method
         assert_equal("                     \t                     \t30 31                \t\n", next_line(1, 1997, 35))
   end
end
