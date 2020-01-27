require 'test/unit'
require 'stringio'

class AtCoderSolutionTest < Test::Unit::TestCase
  sub_test_case "ABC153_D" do
    def setup
      $stdout = StringIO.new
    end

    def teardown
      $stdin = STDIN
      $stdout = STDOUT
    end

    def test_data1
      data = "2"
      $stdin = StringIO.new(data)

      load './D.rb'
      assert_equal "3\n", $stdout.string
    end

    def test_data2
      data = "4"
      $stdin = StringIO.new(data)

      load './D.rb'
      assert_equal "7\n", $stdout.string
    end

    def test_data3
      data = "1000000000000"
      $stdin = StringIO.new(data)

      load './D.rb'
      assert_equal "1099511627775\n", $stdout.string
    end
  end
end

