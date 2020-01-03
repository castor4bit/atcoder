require 'test/unit'
require 'stringio'

class AtCoderSolutionTest < Test::Unit::TestCase
  sub_test_case "ABC085C" do
    def setup
      $stdout = StringIO.new
    end

    def teardown
      $stdin = STDIN
      $stdout = STDOUT
    end

    def test_data1
      data = "9 45000"
      $stdin = StringIO.new(data)

      load './ABC085C.rb'
      x, y, z = $stdout.string.split(" ").map(&:to_i)
      assert_equal 9, x + y + z
      assert_equal 45000, x * 10000 + y * 5000 + z * 1000
    end

    def test_data2
      data = "20 196000"
      $stdin = StringIO.new(data)

      load './ABC085C.rb'
      assert_equal "-1 -1 -1\n", $stdout.string
    end

    def test_data3
      data = "1000 1234000"
      $stdin = StringIO.new(data)

      load './ABC085C.rb'
      x, y, z = $stdout.string.split(" ").map(&:to_i)
      assert_equal 1000, x + y + z
      assert_equal 1234000, x * 10000 + y * 5000 + z * 1000
    end

    def test_data4
      data = "2000 20000000"
      $stdin = StringIO.new(data)

      load './ABC085C.rb'
      x, y, z = $stdout.string.split(" ").map(&:to_i)
      assert_equal 2000, x + y + z
      assert_equal 20000000, x * 10000 + y * 5000 + z * 1000
    end
  end
end

