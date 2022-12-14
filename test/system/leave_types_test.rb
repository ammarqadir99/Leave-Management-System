require "application_system_test_case"

class LeaveTypesTest < ApplicationSystemTestCase
  setup do
    @leave_type = leave_types(:one)
  end

  test "visiting the index" do
    visit leave_types_url
    assert_selector "h1", text: "Leave types"
  end

  test "should create leave type" do
    visit leave_types_url
    click_on "New leave type"

    fill_in "Days allowd", with: @leave_type.days_allowd
    fill_in "Leave name", with: @leave_type.leave_name
    check "Paid unpaid" if @leave_type.paid_unpaid
    fill_in "Remarks", with: @leave_type.remarks
    click_on "Create Leave type"

    assert_text "Leave type was successfully created"
    click_on "Back"
  end

  test "should update Leave type" do
    visit leave_type_url(@leave_type)
    click_on "Edit this leave type", match: :first

    fill_in "Days allowd", with: @leave_type.days_allowd
    fill_in "Leave name", with: @leave_type.leave_name
    check "Paid unpaid" if @leave_type.paid_unpaid
    fill_in "Remarks", with: @leave_type.remarks
    click_on "Update Leave type"

    assert_text "Leave type was successfully updated"
    click_on "Back"
  end

  test "should destroy Leave type" do
    visit leave_type_url(@leave_type)
    click_on "Destroy this leave type", match: :first

    assert_text "Leave type was successfully destroyed"
  end
end
