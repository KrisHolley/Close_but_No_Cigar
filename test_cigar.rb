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
		assert_equal([], grand_bash(my_number, bash_numbers))
	end



end