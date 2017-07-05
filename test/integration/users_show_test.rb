require 'test_helper'

class UsersShowTestTest < ActionDispatch::IntegrationTest
  
  def setup
    @user             = users(:ezra)
    @unactivated_user = users(:bunkis)
    @activated_user   = users(:archer)
  end

  test "users/[:id] only works for activated users" do
    log_in_as(@user)
    get user_path(@unactivated_user)
    assert_redirected_to root_url
    get user_path(@activated_user)
    assert_template 'users/show'
  end

end
