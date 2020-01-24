require 'test/unit'
require 'stringio'

class AtCoderSolutionTest < Test::Unit::TestCase
  sub_test_case "ABC152_D" do
    def setup
      $stdout = StringIO.new
    end

    def teardown
      $stdin = STDIN
      $stdout = STDOUT
    end

    def test_data1
      data = "25"
      $stdin = StringIO.new(data)

      load './D.rb'
      assert_equal "17\n", $stdout.string
    end

    def test_data2
      data = "1"
      $stdin = StringIO.new(data)

      load './D.rb'
      assert_equal "1\n", $stdout.string
    end

    def test_data3
      data = "100"
      $stdin = StringIO.new(data)

      load './D.rb'
      assert_equal "108\n", $stdout.string
    end

    def test_data4
      data = "2020"
      $stdin = StringIO.new(data)

      load './D.rb'
      assert_equal "40812\n", $stdout.string
    end

    def test_data5
      data = "200000"
      $stdin = StringIO.new(data)

      load './D.rb'
      assert_equal "400000008\n", $stdout.string
    end
  end
end
