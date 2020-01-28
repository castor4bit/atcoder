require 'test/unit'
require 'stringio'

class AtCoderSolutionTest < Test::Unit::TestCase
  sub_test_case "keyence2019_A" do
    def setup
      $stdout = StringIO.new
    end

    def teardown
      $stdin = STDIN
      $stdout = STDOUT
    end

    def test_data1
      data = "1 7 9 4"
      $stdin = StringIO.new(data)

      load './A.rb'
      assert_equal "YES\n", $stdout.string
    end

    def test_data2
      data = "1 9 7 4"
      $stdin = StringIO.new(data)

      load './A.rb'
      assert_equal "YES\n", $stdout.string
    end

    def test_data3
      data = "1 2 9 1"
      $stdin = StringIO.new(data)

      load './A.rb'
      assert_equal "NO\n", $stdout.string
    end

    def test_data4
      data = "4 9 0 8"
      $stdin = StringIO.new(data)

      load './A.rb'
      assert_equal "NO\n", $stdout.string
    end
  end
end
