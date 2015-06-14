require_relative "../lib/vine"
require "minitest/autorun"

class TestMeme < MiniTest::Unit::TestCase

  def test_access
    assert_equal 100,   { a: [ 100, 200 ] }.access("a.0")
    assert_equal 10,    { a: { b: 10 } }.access("a.b") 
    assert_equal false, { 'key': false }.access('key')
    assert_equal false, { 'key': false }.access(:key)
    
    assert_equal false, { 'key' => false }.access("key")
  end
  
end