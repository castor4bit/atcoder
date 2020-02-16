require 'test/unit'
require 'stringio'

class AtCoderSolutionTest < Test::Unit::TestCase
  sub_test_case "ABC155_C" do
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
      assert_equal "beet\nvet\n", $stdout.string
    end

    def test_data2
      data = File.read("data2.txt")
      $stdin = StringIO.new(data)

      load './C.rb'
      assert_equal "buffalo\n", $stdout.string
    end

    def test_data3
      data = File.read("data3.txt")
      $stdin = StringIO.new(data)

      load './C.rb'
      assert_equal "kick\n", $stdout.string
    end

    def test_data4
      data = File.read("data4.txt")
      $stdin = StringIO.new(data)

      load './C.rb'
      assert_equal "kun\nnichia\ntapu\nushi\n", $stdout.string
    end
  end
end

