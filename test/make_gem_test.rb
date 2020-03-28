require_relative '../lib/make_gem'
require          'minitest/autorun'

class MakeGemTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil(::MakeGem::VERSION)
    assert(::MakeGem::VERSION.frozen?)
    assert(::MakeGem::VERSION.is_a?(String))
    assert(/\A\d+\.\d+\.\d+/ =~ ::MakeGem::VERSION)
  end

  def test_that_it_has_a_description
    refute_nil(::MakeGem::DESCRIPTION)
    assert(::MakeGem::DESCRIPTION.frozen?)
    assert(::MakeGem::DESCRIPTION.is_a?(String))
  end

  def test_it_does_something_useful
    assert(true)
  end
end
