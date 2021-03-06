require 'test/unit'
require 'stringio'

class AtCoderSolutionTest < Test::Unit::TestCase
  sub_test_case "ABC152_C" do
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
      assert_equal "3\n", $stdout.string
    end

    def test_data2
      data = File.read("data2.txt")
      $stdin = StringIO.new(data)

      load './C.rb'
      assert_equal "4\n", $stdout.string
    end

    def test_data3
      data = File.read("data3.txt")
      $stdin = StringIO.new(data)

      load './C.rb'
      assert_equal "1\n", $stdout.string
    end

    def test_data4
      data = File.read("data4.txt")
      $stdin = StringIO.new(data)

      load './C.rb'
      assert_equal "4\n", $stdout.string
    end

    def test_data5
      data = File.read("data5.txt")
      $stdin = StringIO.new(data)

      load './C.rb'
      assert_equal "1\n", $stdout.string
    end
  end
end
