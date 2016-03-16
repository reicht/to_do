class ListerTest < Minitest::Test
  def test_list_create
    assert_equal "steve", Lists.new("steve").name
  end

  def test_toggle_completion
    tester = Lists.new(tester)
    tester.completion[0] = 0
    tester.toggle_completion(0)
    assert_equal 1, tester.completion[0]
  end

  def test_enter_item
    tester = Lists.new(tester)
    tester.enter_item("Testing")
    assert_equal "Testing", tester.contents[0]
  end

  def test_binder_create
    assert Binder.new
  end

  def test_binding
    bin = Binder.new
    test_note = []
    assert bin.bind(test_note)
  end
end

# class FizzBuzzTest < Minitest::Test
#   def test_fizzbuzz_exists
#     assert fizzbuzz(0)
#   end
#
#   def test_1_for_1
#     assert_equal 1, fizzbuzz(1)
#   end
#
#   def test_2_for_2
#     assert_equal 2, fizzbuzz(2)
#   end
#
#   def test_fizz_for_3
#     assert_equal "fizz", fizzbuzz(3)
#   end
#
#   def test_buzz_for_5
#     assert_equal "buzz", fizzbuzz(5)
#   end
#
#   def test_fizz_for_6
#     assert_equal "fizz", fizzbuzz(6)
#   end
#
#   def test_buzz_for_10
#     assert_equal "buzz", fizzbuzz(10)
#   end
#
#   def test_fizzbuzz_for_15
#     assert_equal "fizzbuzz", fizzbuzz(15)
#   end
#
#   def test_fizzbuzz_for_30
#     assert_equal "fizzbuzz", fizzbuzz(30)
#   end
# end
