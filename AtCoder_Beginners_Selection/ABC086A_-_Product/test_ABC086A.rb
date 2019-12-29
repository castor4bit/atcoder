require 'test/unit'
require 'stringio'

class AtCoderSolutionTest < Test::Unit::TestCase
  sub_test_case "ABC086A" do
    def setup
      $stdout = StringIO.new
    end

    def teardown
      $stdin = STDIN
      $stdout = STDOUT
    end

    def test_data1
      data = File.read('data1.txt')
      $stdin = StringIO.new(data)

      load './ABC086A.rb'
      assert_equal "Even\n", $stdout.string
    end

    def test_data2
      data = File.read('data2.txt')
      $stdin = StringIO.new(data)

      load './ABC086A.rb'
      assert_equal "Odd\n", $stdout.string
    end
  end
end
