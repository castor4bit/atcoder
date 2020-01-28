require 'test/unit'
require 'stringio'

class AtCoderSolutionTest < Test::Unit::TestCase
  sub_test_case "keyence2019_B" do
    def setup
      $stdout = StringIO.new
    end

    def teardown
      $stdin = STDIN
      $stdout = STDOUT
    end

    def test_data1
      data = "keyofscience"
      $stdin = StringIO.new(data)

      load './B.rb'
      assert_equal "YES\n", $stdout.string
    end

    def test_data2
      data = "mpyszsbznf"
      $stdin = StringIO.new(data)

      load './B.rb'
      assert_equal "NO\n", $stdout.string
    end

    def test_data3
      data = "ashlfyha"
      $stdin = StringIO.new(data)

      load './B.rb'
      assert_equal "NO\n", $stdout.string
    end

    def test_data4
      data = "keyence"
      $stdin = StringIO.new(data)

      load './B.rb'
      assert_equal "YES\n", $stdout.string
    end

    def test_data5
      data = "akeyence"
      $stdin = StringIO.new(data)

      load './B.rb'
      assert_equal "YES\n", $stdout.string
    end

    def test_data6
      data = "keyencez"
      $stdin = StringIO.new(data)

      load './B.rb'
      assert_equal "YES\n", $stdout.string
    end

    def test_data7
      data = "akeyencez"
      $stdin = StringIO.new(data)

      load './B.rb'
      assert_equal "NO\n", $stdout.string
    end

    def test_data8
      data = "aaaaaaaa"
      $stdin = StringIO.new(data)

      load './B.rb'
      assert_equal "NO\n", $stdout.string
    end
  end
end
