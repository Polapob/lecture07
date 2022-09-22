require "application_system_test_case"

class StudensTest < ApplicationSystemTestCase
  setup do
    @studen = studens(:one)
  end

  test "visiting the index" do
    visit studens_url
    assert_selector "h1", text: "Studens"
  end

  test "should create studen" do
    visit studens_url
    click_on "New studen"

    fill_in "Class year", with: @studen.class_year
    fill_in "Dob", with: @studen.dob
    fill_in "Name", with: @studen.name
    fill_in "Student no", with: @studen.student_no
    click_on "Create Studen"

    assert_text "Studen was successfully created"
    click_on "Back"
  end

  test "should update Studen" do
    visit studen_url(@studen)
    click_on "Edit this studen", match: :first

    fill_in "Class year", with: @studen.class_year
    fill_in "Dob", with: @studen.dob
    fill_in "Name", with: @studen.name
    fill_in "Student no", with: @studen.student_no
    click_on "Update Studen"

    assert_text "Studen was successfully updated"
    click_on "Back"
  end

  test "should destroy Studen" do
    visit studen_url(@studen)
    click_on "Destroy this studen", match: :first

    assert_text "Studen was successfully destroyed"
  end
end
