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
end 
    