require 'test_helper'

class ThreadAdminsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @thread_admin = thread_admins(:one)
  end

  test "should get index" do
    get thread_admins_url
    assert_response :success
  end

  test "should get new" do
    get new_thread_admin_url
    assert_response :success
  end

  test "should create thread_admin" do
    assert_difference('ThreadAdmin.count') do
      post thread_admins_url, params: { thread_admin: { body: @thread_admin.body, title: @thread_admin.title, user_id: @thread_admin.user_id } }
    end

    assert_redirected_to thread_admin_url(ThreadAdmin.last)
  end

  test "should show thread_admin" do
    get thread_admin_url(@thread_admin)
    assert_response :success
  end

  test "should get edit" do
    get edit_thread_admin_url(@thread_admin)
    assert_response :success
  end

  test "should update thread_admin" do
    patch thread_admin_url(@thread_admin), params: { thread_admin: { body: @thread_admin.body, title: @thread_admin.title, user_id: @thread_admin.user_id } }
    assert_redirected_to thread_admin_url(@thread_admin)
  end

  test "should destroy thread_admin" do
    assert_difference('ThreadAdmin.count', -1) do
      delete thread_admin_url(@thread_admin)
    end

    assert_redirected_to thread_admins_url
  end
end
