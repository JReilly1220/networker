require 'test_helper'

class ParentTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Parent.new.valid?
  end
end
