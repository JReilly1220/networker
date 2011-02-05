require 'test_helper'

class ParentsControllerTest < ActionController::TestCase
  def test_create_invalid
    Parent.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Parent.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to root_url
  end

  def test_destroy
    parent = Parent.first
    delete :destroy, :id => parent
    assert_redirected_to root_url
    assert !Parent.exists?(parent.id)
  end
end
