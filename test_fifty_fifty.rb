require "minitest/autorun"
require_relative "fifty_fifty.rb"
class My_test < Minitest::Test

    def test_num_one
        assert_equal(1,1)
    end

    def test_num_2
        my_num = ["1232", "1233", "1234"]
        bash_num = ["1234", "1456", "1457", "1458"]
        assert_equal(["1234"], winner(my_num, bash_num))
    end

    def test_num_3
        my_num = ["1555", "6123", "9999"]
        bash_num = ["1234", "6123", "1586", "9999"]
        assert_equal(["6123", "9999"], winner(my_num, bash_num))
    end

    def test_num_4
        my_number = ["1555", "6123", "9999"]
        bash_numbers = ["1234", "6122", "1585", "5999"]
        assert_equal(["1555", "6123", "9999"], offbyonenumber(my_number, bash_numbers))
    end

    def test_num_5
        my_number = ["1235"]
        bash_numbers = ["1230", "8888", "6654"]
        assert_equal(["1235"], offbyonenumber(my_number, bash_numbers))
    end

    # def test_num_6
    #     my_number = ["1234", "9876", "5432", "7777", "3333"]
    #     bash_numbers = ["8675", "3099", "6777", "2333", "3825", "1478", "8523", "9632"]
    #     assert_equal(["7777", "3333"], offbyonenumber(my_number, bash_numbers))
    # end
    # def test_num_7
    #     my_number = ["1234"]
    #     bash_numbers = ["1233"]
    #     assert_equal(["1234"], offbyonenumber(my_number, bash_numbers))
    # end

    def test_six
    my_number = ["1234", "2234", "3234"]
    bash_numbers = ["1233", "2233", "3233", "2222", "5555"]
    assert_equal(["1234", "2234", "3234"], offbyonenumber(my_number, bash_numbers))
  end
end 
