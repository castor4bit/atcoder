require 'test/unit'
require 'stringio'

class AtCoderSolutionTest < Test::Unit::TestCase
  sub_test_case "PracticeA" do
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

      require './PracticeA'
      assert_equal "6 test\n", $stdout.string
    end
  end
end
