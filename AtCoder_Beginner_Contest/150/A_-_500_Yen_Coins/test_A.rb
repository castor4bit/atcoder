require 'test/unit'
require 'stringio'

class AtCoderSolutionTest < Test::Unit::TestCase
  sub_test_case "ABC150_A" do
    def setup
      $stdout = StringIO.new
    end

    def teardown
      $stdin = STDIN
      $stdout = STDOUT
    end

    def test_data1
      data = "2 900"
      $stdin = StringIO.new(data)

      load './A.rb'
      assert_equal "Yes\n", $stdout.string
    end

    def test_data2
      data = "1 501"
      $stdin = StringIO.new(data)

      load './A.rb'
      assert_equal "No\n", $stdout.string
    end

    def test_data3
      data = "4 2000"
      $stdin = StringIO.new(data)

      load './A.rb'
      assert_equal "Yes\n", $stdout.string
    end
  end
end
