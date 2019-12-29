require 'test/unit'
require 'stringio'

class AtCoderSolutionTest < Test::Unit::TestCase
  sub_test_case "ABC083B" do
    def setup
      $stdout = StringIO.new
    end

    def teardown
      $stdin = STDIN
      $stdout = STDOUT
    end

    def test_data1
      data = "20 2 5"
      $stdin = StringIO.new(data)

      load './ABC083B.rb'
      assert_equal "84\n", $stdout.string
    end

    def test_data2
      data = "10 1 2"
      $stdin = StringIO.new(data)

      load './ABC083B.rb'
      assert_equal "13\n", $stdout.string
    end

    def test_data3
      data = "100 4 16"
      $stdin = StringIO.new(data)

      load './ABC083B.rb'
      assert_equal "4554\n", $stdout.string
    end
  end
end
