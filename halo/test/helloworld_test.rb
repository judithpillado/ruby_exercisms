require 'minitest/autorun'
require 'minitest/pride'
require './lib/helloworld'

class HelloworldTest < Minitest::Test
  def setup
    @hello_world = Helloworld.new
  end

  def test_it_exists
    assert_instance_of Helloworld, @hello_world
  end

  def test_it_says_hi
    assert_equal "Hello, World!", Helloworld.hello
    assert_equal "What's up!", @hello_world.cool_hello
  end
end