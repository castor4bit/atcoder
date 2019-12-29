require 'test/unit'
require 'stringio'

class AtCoderSolutionTest < Test::Unit::TestCase
  sub_test_case "A" do
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

      load './A.rb'
      assert_equal "atcoder\n", $stdout.string
    end

    def test_data2
      data = File.read('data2.txt')
      $stdin = StringIO.new(data)

      load './A.rb'
      assert_equal "humuhumu\n", $stdout.string
    end
  end
end
