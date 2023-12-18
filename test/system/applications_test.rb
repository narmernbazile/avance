require "application_system_test_case"

class ApplicationsTest < ApplicationSystemTestCase
  setup do
    @application = applications(:one)
  end

  test "visiting the index" do
    visit applications_url
    assert_selector "h1", text: "Applications"
  end

  test "should create application" do
    visit applications_url
    click_on "New application"

    fill_in "Appid", with: @application.appID
    fill_in "Company", with: @application.company
    fill_in "Deadline", with: @application.deadline
    fill_in "Location", with: @application.location
    fill_in "Next", with: @application.next
    fill_in "Status", with: @application.status
    click_on "Create Application"

    assert_text "Application was successfully created"
    click_on "Back"
  end

  test "should update Application" do
    visit application_url(@application)
    click_on "Edit this application", match: :first

    fill_in "Appid", with: @application.appID
    fill_in "Company", with: @application.company
    fill_in "Deadline", with: @application.deadline
    fill_in "Location", with: @application.location
    fill_in "Next", with: @application.next
    fill_in "Status", with: @application.status
    click_on "Update Application"

    assert_text "Application was successfully updated"
    click_on "Back"
  end

  test "should destroy Application" do
    visit application_url(@application)
    click_on "Destroy this application", match: :first

    assert_text "Application was successfully destroyed"
  end
end
