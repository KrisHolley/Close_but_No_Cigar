require "minitest/autorun"
require_relative "close.rb"
class My_test < Minitest::Test

    def test_one
        assert_equal(1,1)
    end

    def test_matching_number_returns_false
        my_number = "1234"
        bash_numbers = "1233"
        assert_equal(true, off_by_one_number(my_number, bash_numbers))
    end

    def test_bash_array_number
        my_number = "1234"
        bash_numbers = ["5656", "1222", "4444"]
        assert_equal(false, off_by_one_number(my_number, bash_numbers))
    end

    def test_bash_array_one_number_off
        my_number = "1234"
        bash_numbers = ["1333", "1233", "3322"]
        assert_equal(["1233"], winning_tickets_off_by_one(my_number, bash_numbers))
    end

    def test_bash_array_one
        my_number = "1234"
        bash_numbers = ["1111", "1222", "1224", "1244", ]
        assert_equal(["1224", "1244"], winning_tickets_off_by_one(my_number , bash_numbers))
    end

    def test_bash_two
        my_number ="1234"
        bash_numbers = ["4444", "7676", "1212"]
        assert_equal([], winning_tickets_off_by_one(my_number, bash_numbers))
    end

    def test_bash_three
        my_number = "1234"
        bash_numbers = ["1256", "1243", "1233", "1244", "4321", "1134", "3214", "9876"]
        assert_equal(["1233", "1244","1134"], winning_tickets_off_by_one(my_number, bash_numbers))
    end

    def test_bash_four
        my_number = "1234"
        bash_numbers = ["1134", "1441", "3234", "6543", "1235", "8888", "9234", "6214"]
        assert_equal(["1134", "3234", "1235", "9234"], winning_tickets_off_by_one(my_number, bash_numbers))
    end

    def test_bash_five
        my_number ="1234"
        bash_numbers = ["1234", "2234", "123456", "6234", "78910", "4321", "1434", "1233", "9999"]
        assert_equal(["2234", "6234", "1434", "1233"], winning_tickets_off_by_one(my_number, bash_numbers))
    end

    def test_bash_six
        my_number = "1234"
        bash_numbers = ["1134", "3234", "4234", "6543", "4213", "3214", "4235", "1234", "1334", "1231"]
        assert_equal(["1134", "3234", "4234", "1334", "1231"], winning_tickets_off_by_one(my_number, bash_numbers))
    end

    def test_bash_seven
        my_number = "1234"
        bash_numbers = ["1233"]
        assert_equal(false, off_by_one_number(my_number, bash_numbers))
    end

    def test_how_many_different
        my_number = "1234567"
        bash_numbers = ["1234566"]
        assert_equal(7, numbers_off_by_how_many(my_number, bash_numbers))
    end

    def test_how_many_off
        my_number = "123456"
        bash_numbers = ["123456789"]
        assert_equal(6, numbers_off_by_how_many(my_number, bash_numbers))
    end

    def test_how_many_different
        my_number = "123456789"
        bash_numbers = ["1234"]
        assert_equal(9, numbers_off_by_how_many(my_number, bash_numbers))
    end

    def test_how_many_different_off
        my_number = "1234"
        bash_numbers =["123456789123456789"]
        assert_equal(4, numbers_off_by_how_many(my_number, bash_numbers))
    end
end