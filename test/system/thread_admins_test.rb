require "application_system_test_case"

class ThreadAdminsTest < ApplicationSystemTestCase
  setup do
    @thread_admin = thread_admins(:one)
  end

  test "visiting the index" do
    visit thread_admins_url
    assert_selector "h1", text: "Thread Admins"
  end

  test "creating a Thread admin" do
    visit thread_admins_url
    click_on "New Thread Admin"

    fill_in "Body", with: @thread_admin.body
    fill_in "Title", with: @thread_admin.title
    fill_in "User", with: @thread_admin.user_id
    click_on "Create Thread admin"

    assert_text "Thread admin was successfully created"
    click_on "Back"
  end

  test "updating a Thread admin" do
    visit thread_admins_url
    click_on "Edit", match: :first

    fill_in "Body", with: @thread_admin.body
    fill_in "Title", with: @thread_admin.title
    fill_in "User", with: @thread_admin.user_id
    click_on "Update Thread admin"

    assert_text "Thread admin was successfully updated"
    click_on "Back"
  end

  test "destroying a Thread admin" do
    visit thread_admins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Thread admin was successfully destroyed"
  end
end
