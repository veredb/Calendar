require './cal2'
require 'test/unit'

class CalendarTest < Test::Unit::TestCase

  def test_1_day_of_week_of_start_should_be_as_dictated_by_calendar
    assert_equal(3, day_of_week_of_start(4,1997))
  end
  
  def test_2_day_of_week_of_start_should_be_as_dictated_by_calendar
    assert_equal(3, day_of_week_of_start(2, 2011))
  end

  def test_3_day_of_week_of_start_should_be_as_dictated_by_calendar_for_a_new_millenium
    assert_equal(4, day_of_week_of_start(1, 3000))
  end

  def test_4_day_of_week_of_start_for_h_is_0_and_the_day_of_start_is_saturday
    assert_equal(7, day_of_week_of_start(1,2000))
  end


  def test_5_number_of_days_in_a_leap_year
     assert_equal(29, the_days(2,2000))
  end

  def test_6_number_of_days_in_a_leap_year
     assert_equal(29, the_days(2,2400))
  end

  def test_7_number_of_days_in_a_non_leap_year_when_year_not_devided_by_400_but_devided_by_100
     assert_equal(28, the_days(2,2100))
  end

  def test_8_number_of_days_in_a_non_leap_year_when_year_not_devided_by_400_but_devided_by_100
     assert_equal(28, the_days(2,2200))
  end

  def test_9_number_of_days_in_a_regular_month
     assert_equal(31, the_days(1,2011))
  end

  def test_10_number_of_days_in_a_regular_month
     assert_equal(30, the_days(6, 1964))
  end

  def test_11_number_of_days_in_a_regular_month
     assert_equal(31, the_days(10, 2015))
  end

  def test_12_prints_the_right_month_in_the_title
     assert_equal("March", print_month_year(3,2000))
  end

  def test_13_prints_the_right_month_in_the_title
     assert_equal("January", print_month_year(1, 1971))
  end

  def test_14_prints_the_right_month_in_the_title
     assert_equal("June", print_month_year(6, 2080))
  end

  def test_15_prints_the_line_of_days_Su_Mo_Tu
     assert_equal(["Su", "Mo",  "Tu",  "We",  "Th",  "Fr",  "Sa"], print_days_of_week_in_line)
  end

end
