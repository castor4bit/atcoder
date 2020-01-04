require 'test/unit'
require 'stringio'

class AtCoderSolutionTest < Test::Unit::TestCase
  sub_test_case "ABC040_C" do
    def setup
      $stdout = StringIO.new
    end

    def teardown
      $stdin = STDIN
      $stdout = STDOUT
    end

    def test_data1
      data = File.read("data1.txt")
      $stdin = StringIO.new(data)

      load './C.rb'
      assert_equal "40\n", $stdout.string
    end

    def test_data2
      data = File.read("data2.txt")
      $stdin = StringIO.new(data)

      load './C.rb'
      assert_equal "40\n", $stdout.string
    end

    def test_data3
      data = File.read("data3.txt")
      $stdin = StringIO.new(data)

      load './C.rb'
      assert_equal "310\n", $stdout.string
    end
  end
end
