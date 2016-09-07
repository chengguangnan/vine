require_relative "../lib/vine"
require "minitest/autorun"

class TestMeme < MiniTest::Test

  def test_access
    assert_equal 100,   { a: [ 100, 200 ] }.access("a.0")
    assert_equal 10,    { a: { b: 10 } }.access("a.b") 
    assert_equal false, { 'key': false }.access('key')
    assert_equal false, { 'key': false }.access(:key)
    
    assert_equal false, { 'key' => false }.access("key")
  end
  
  def test_set
    h = { a: { "b"=> 10 } }
    h.set("a.b", 2)
    assert_equal 2,     h[:a]["b"]

    h.set("a.b1.0", 10)
    assert_equal 10,    h[:a][:b1][0]

    h.set("a.b.c", 100)
    assert_equal 100,   h[:a]["b"][:c]

    h.set("a.b.c.1.f.0", 1)
    assert_equal 1,     h[:a]["b"][:c][1][:f][0]

    h.set("a.e.c.1.f.2", 10)
    assert_equal 10,    h[:a][:e][:c][1][:f][2]
  end
end
