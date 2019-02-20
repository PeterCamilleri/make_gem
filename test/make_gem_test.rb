require_relative '../lib/make_gemerb'
require          'minitest/autorun'
require          'minitest_visible'

module MakeGemTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::MakeGem::VERSION
  end

  def test_it_does_something_useful
    assert false
  end
end
