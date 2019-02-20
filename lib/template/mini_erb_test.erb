require_relative '../lib/mini_erb'
gem              'minitest'
require          'minitest/autorun'
require          'minitest_visible'

class MiniErbTest < Minitest::Test

  #Track mini-test progress.
  include MinitestVisible

  a = 42
  puts a
  $test_binding = binding

  def test_that_it_has_a_version_number
    refute_nil ::MiniErb::VERSION
    assert(::MiniErb::VERSION.frozen?)
    assert(::MiniErb::VERSION.is_a?(String))
    assert(/\A\d+\.\d+\.\d+/ =~ ::MiniErb::VERSION)
  end

  def test_that_it_has_a_description
    refute_nil ::MiniErb::DESCRIPTION
    assert(::MiniErb::DESCRIPTION.frozen?)
    assert(::MiniErb::DESCRIPTION.is_a?(String))
  end

  def test_the_essentials
    assert_equal(MiniErb, MiniErb.new("Test 1 2 3").class)
    assert_equal("(mini_erb)", MiniErb.new("Test 1 2 3").filename)
    assert_equal(0, MiniErb.new("Test 1 2 3").lineno)
  end

  def test_an_empty_input
    assert_equal(String, MiniErb.new("").src.class)
    src = "_erbout='';_erbout"
    assert_equal(src, MiniErb.new("").src)
    result = ""
    assert_equal(result, MiniErb.new("").result($test_binding))
  end

  def test_a_simple_string
    assert_equal(String, MiniErb.new("Test 1 2 3").src.class)
    src = "_erbout='';_erbout<<\"Test 1 2 3\";_erbout"
    assert_equal(src, MiniErb.new("Test 1 2 3").src)
    result = "Test 1 2 3"
    assert_equal(result, MiniErb.new("Test 1 2 3").result($test_binding))
  end

  def test_a_simple_value_embedded
    input = "LtU&E = <%= a %>"
    src = "_erbout='';_erbout<<\"LtU&E = \";_erbout<<( a ).to_s;_erbout"
    assert_equal(src, MiniErb.new(input).src)
    result = "LtU&E = 42"
    assert_equal(result, MiniErb.new(input).result($test_binding))
  end

  def test_looping_text
    input = "<% 3.times { %>A<% } %>"
    src = "_erbout=''; 3.times { ;_erbout<<\"A\"; } ;_erbout"
    assert_equal(src, MiniErb.new(input).src)
    result = "AAA"
    assert_equal(result, MiniErb.new(input).result($test_binding))
  end

  def test_eating_new_lines
    input = "LtU&E = <%= a -%>\n"
    src = "_erbout='';_erbout<<\"LtU&E = \";_erbout<<( a ).to_s;_erbout"
    assert_equal(src, MiniErb.new(input).src)
    result = "LtU&E = 42"
    assert_equal(result, MiniErb.new(input).result($test_binding))
  end

  def test_a_comment
    input = "Test<%# Some debug code %> 1 2 3"
    src = "_erbout='';_erbout<<\"Test\";_erbout<<\" 1 2 3\";_erbout"
    assert_equal(src, MiniErb.new(input).src)
    result = "Test 1 2 3"
    assert_equal(result, MiniErb.new(input).result($test_binding))
  end

end
