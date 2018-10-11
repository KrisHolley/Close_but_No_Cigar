require "minitest/autorun"
require_relative "cigar.rb"
class My_test < Minitest::Test

	def test_number_1
		assert_equal(1,1)
	end

	def test_empty_arr
		my_number = "1234"
		bash_numbers = []
		assert_equal([], grand_bash(my_number, bash_numbers))
	end

	def test_two
		my_number = "1234"
		bash_numbers = ["1233", "1244", "1255", "1234"]
		assert_equal(["1234"], grand_bash(my_number, bash_numbers))
	end

	def test_three
		my_number = "1234"
		bash_numbers = ["1111", "1212", "1313", "4444"]
		assert_equal([], grand_bash(my_number, bash_numbers))
	end

	def test_four
		my_number = "1234"
		bash_numbers = ["1233","1331","1432","1234"]
		assert_equal(["1234"], grand_bash(my_number, bash_numbers))
	end

	def test_five
		my_number = "1234"
		bash_numbers = ["1515", "1621", "4321", "2232"]
		assert_equal([], grand_bash(my_number, bash_numbers))
	end
	
	def test_six
		my_number = "1234"
		bash_numbers = ["1222", "1345", "1234", "8543"]
		assert_equal(["1234"], grand_bash(my_number, bash_numbers))
	end

	def test_seven
		my_number ="1234"
		bash_numbers = ["1232", "4321","2341", "3214"]
		assert_equal([], grand_bash(my_number, bash_numbers))
	end

end