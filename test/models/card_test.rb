require 'test_helper'

class CardTest < ActiveSupport::TestCase
  test "the truth" do
    Card.create(title: "lol", description: "hehe")

    assert_equal Card.last.title, "lol"
  end
end
