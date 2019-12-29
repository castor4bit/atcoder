require 'test/unit'
require 'stringio'

class AtCoderSolutionTest < Test::Unit::TestCase
  sub_test_case "C" do
    def setup
      $stdout = StringIO.new
    end

    def teardown
      $stdin = STDIN
      $stdout = STDOUT
    end

    def test_data1
      data = "20"
      $stdin = StringIO.new(data)

      load './C.rb'
      assert_equal "23\n", $stdout.string
    end

    def test_data2
      data = "2"
      $stdin = StringIO.new(data)

      load './C.rb'
      assert_equal "2\n", $stdout.string
    end

    def test_data3
      data = "99992"
      $stdin = StringIO.new(data)

      load './C.rb'
      assert_equal "100003\n", $stdout.string
    end
  end
end
