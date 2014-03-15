gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/unicorn'

class UnicornTest < Minitest::Test
  def test_it_has_a_name
    unicorn = Unicorn.new("Robert")
    assert_equal "Robert", unicorn.name
  end

  def test_it_can_be_named_something_else
    skip
    unicorn = Unicorn.new("Joseph")
    assert_equal "Joseph", unicorn.name
  end

  def test_it_is_white_by_default
    skip
    unicorn = Unicorn.new("Margaret")
    assert_equal "white", unicorn.color
  end

  def test_it_knows_if_it_is_white
    skip
    unicorn = Unicorn.new("Elisabeth")
    assert unicorn.white?
  end

  def test_it_does_not_have_to_be_white
    skip
    unicorn = Unicorn.new("Barbara", "purple")
    assert_equal "purple", unicorn.color
  end

  def test_it_knows_if_it_is_not_white
    skip
    unicorn = Unicorn.new("Roxanne", "green")
    refute unicorn.white?
  end

  def test_unicorn_says_sparkly_stuff
    skip
    unicorn = Unicorn.new("Johnny")
    assert_equal "**;* Wonderful! **;*", unicorn.say("Wonderful!")
  end

  def test_unicorn_says_different_sparkly_stuff
    skip
    unicorn = Unicorn.new("Francis")
    assert_equal "**;* I don't like you very much. **;*", unicorn.say("I don't like you very much.")
  end
end
