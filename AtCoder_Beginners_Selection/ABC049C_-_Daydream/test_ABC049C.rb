require 'test/unit'
require 'stringio'

class AtCoderSolutionTest < Test::Unit::TestCase
  sub_test_case "ABC049C" do
    def setup
      $stdout = StringIO.new
    end

    def teardown
      $stdin = STDIN
      $stdout = STDOUT
    end

    def test_data1
      data = "erasedream"
      $stdin = StringIO.new(data)

      load './ABC049C.rb'
      assert_equal "YES\n", $stdout.string
    end

    def test_data2
      data = "dreameraser"
      $stdin = StringIO.new(data)

      load './ABC049C.rb'
      assert_equal "YES\n", $stdout.string
    end

    def test_data3
      data = "dreamerer"
      $stdin = StringIO.new(data)

      load './ABC049C.rb'
      assert_equal "NO\n", $stdout.string
    end

    def test_data4
      patterns = %w[dream dreamer erase eraser]
      data = ""
      10.times { |j| data += patterns.shuffle.join }
      $stdin = StringIO.new(data)

      load './ABC049C.rb'
      assert_equal "YES\n", $stdout.string
    end
  end
end
