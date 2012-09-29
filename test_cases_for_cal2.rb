require './cal2'
require 'test/unit'

class CalendarTest < Test::Unit::TestCase

  def test_1_day_of_week_of_start_should_give_what_day_starts_the_month_by_zellers_function
    assert_equal(3, day_of_week_of_start(4,1997))
  end
  
  def test_2_day_of_week_of_start_should_give_what_day_starts_the_month_by_zellers_function
    assert_equal(3, day_of_week_of_start(2, 2011))
  end
 
  def test_3_day_of_week_of_start_should_be_as_dictated_by_calendar_for_a_new_millenium
    assert_equal(4, day_of_week_of_start(1, 3000))
  end

  def test_4_day_of_week_of_start_for_h_is_0_and_the_day_of_start_is_saturday
    assert_equal(7, day_of_week_of_start(1,2000))
  end
 
 def test_5_number_of_days_in_a_millenium_1_2000
    assert_equal("\t\t\t\t\t\t1\n2\t3\t4\t5\t6\t7\t8\n9\t10\t11\t12\t13\t14\t15\n16\t17\t18\t19\t20\t21\t22\n23\t24\t25\t26\t27\t28\t29\n30\t31\t\n", the_days(1, 2000))
 end

 def test_6_number_of_days_in_a_leap_year
    assert_equal("\t\t1\t2\t3\t4\t5\n6\t7\t8\t9\t10\t11\t12\n13\t14\t15\t16\t17\t18\t19\n20\t21\t22\t23\t24\t25\t26\n27\t28\t29\t\n", the_days(2, 2000))
 end


 def test_7_number_of_days_in_a_leap_year
    assert_equal("\t\t1\t2\t3\t4\t5\n6\t7\t8\t9\t10\t11\t12\n13\t14\t15\t16\t17\t18\t19\n20\t21\t22\t23\t24\t25\t26\n27\t28\t29\t\n", the_days(2, 2400))
 end


 def test_8_number_of_days_in_a_non_leap_year_when_year_not_devided_by_400_but_devided_by_100
   assert_equal("\t1\t2\t3\t4\t5\t6\n7\t8\t9\t10\t11\t12\t13\n14\t15\t16\t17\t18\t19\t20\n21\t22\t23\t24\t25\t26\t27\n28\t\n", the_days(2, 2100))
end

 def test_9_number_of_days_in_a_non_leap_year_when_year_not_devided_by_400_but_devided_by_100
   assert_equal("\t\t\t\t\t\t1\n2\t3\t4\t5\t6\t7\t8\n9\t10\t11\t12\t13\t14\t15\n16\t17\t18\t19\t20\t21\t22\n23\t24\t25\t26\t27\t28\t\n", the_days(2, 2200))
end
 
def test_10_number_of_days_in_a_regular_month
    assert_equal("\t\t\t\t\t\t1\n2\t3\t4\t5\t6\t7\t8\n9\t10\t11\t12\t13\t14\t15\n16\t17\t18\t19\t20\t21\t22\n23\t24\t25\t26\t27\t28\t29\n30\t31\t\n", the_days(1, 2011))
end

def test_11_number_of_days_in_a_regular_month
    assert_equal("\t1\t2\t3\t4\t5\t6\n7\t8\t9\t10\t11\t12\t13\n14\t15\t16\t17\t18\t19\t20\n21\t22\t23\t24\t25\t26\t27\n28\t29\t30\t\n", the_days(6, 1964))
end

def test_12_number_of_days_in_a_regular_month
    assert_equal("\t\t\t\t1\t2\t3\n4\t5\t6\t7\t8\t9\t10\n11\t12\t13\t14\t15\t16\t17\n18\t19\t20\t21\t22\t23\t24\n25\t26\t27\t28\t29\t30\t31\n\n", the_days(10, 2015))
end

  def test_13_prints_the_right_month_in_the_title
     assert_equal("\t\tMarch 2000\n", print_month_year(3,2000))
  end

  def test_14_prints_the_right_month_in_the_title
     assert_equal("\t\tJanuary 1971\n", print_month_year(1, 1971))
  end

  def test_15_prints_the_right_month_in_the_title
     assert_equal("\t\tJune 2080\n", print_month_year(6, 2080))
  end

  def test_16_prints_the_line_of_days_Su_Mo_Tu
     assert_equal("Su\tMo\tTu\tWe\tTh\tFr\tSa\t", print_days_of_week_in_line)
  end

end
