require "application_system_test_case"

class CellphonesTest < ApplicationSystemTestCase
  setup do
    @cellphone = cellphones(:one)
  end

  test "visiting the index" do
    visit cellphones_url
    assert_selector "h1", text: "Cellphones"
  end

  test "creating a Cellphone" do
    visit cellphones_url
    click_on "New Cellphone"

    fill_in "Brand", with: @cellphone.Brand
    fill_in "Camera", with: @cellphone.Camera
    fill_in "Internal Storage", with: @cellphone.Internal_Storage
    fill_in "Mpixel", with: @cellphone.Mpixel
    fill_in "Name", with: @cellphone.Name
    fill_in "No Sim Slot", with: @cellphone.No_Sim_Slot
    fill_in "Os", with: @cellphone.OS
    fill_in "Size Of Screen", with: @cellphone.Size_of_Screen
    fill_in "Stock", with: @cellphone.Stock
    fill_in "Year Released", with: @cellphone.Year_Released
    click_on "Create Cellphone"

    assert_text "Cellphone was successfully created"
    click_on "Back"
  end

  test "updating a Cellphone" do
    visit cellphones_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @cellphone.Brand
    fill_in "Camera", with: @cellphone.Camera
    fill_in "Internal Storage", with: @cellphone.Internal_Storage
    fill_in "Mpixel", with: @cellphone.Mpixel
    fill_in "Name", with: @cellphone.Name
    fill_in "No Sim Slot", with: @cellphone.No_Sim_Slot
    fill_in "Os", with: @cellphone.OS
    fill_in "Size Of Screen", with: @cellphone.Size_of_Screen
    fill_in "Stock", with: @cellphone.Stock
    fill_in "Year Released", with: @cellphone.Year_Released
    click_on "Update Cellphone"

    assert_text "Cellphone was successfully updated"
    click_on "Back"
  end

  test "destroying a Cellphone" do
    visit cellphones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cellphone was successfully destroyed"
  end
end
