require 'test/unit'
require 'stringio'

class AtCoderSolutionTest < Test::Unit::TestCase
  sub_test_case "ABC129_D" do
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

      load './D.rb'
      assert_equal "2\n", $stdout.string
    end

    def test_data2
      data = File.read("data2.txt")
      $stdin = StringIO.new(data)

      load './D.rb'
      assert_equal "1\n0\n0\n1\n", $stdout.string
    end

    def test_data3
      data = File.read("data3.txt")
      $stdin = StringIO.new(data)

      load './D.rb'
      assert_equal "4\n4\n1\n1\n1\n2\n", $stdout.string
    end
  end
end
