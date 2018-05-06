require 'test_helper'

class CellphonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cellphone = cellphones(:one)
  end

  test "should get index" do
    get cellphones_url
    assert_response :success
  end

  test "should get new" do
    get new_cellphone_url
    assert_response :success
  end

  test "should create cellphone" do
    assert_difference('Cellphone.count') do
      post cellphones_url, params: { cellphone: { Brand: @cellphone.Brand, Camera: @cellphone.Camera, Internal_Storage: @cellphone.Internal_Storage, Mpixel: @cellphone.Mpixel, Name: @cellphone.Name, No_Sim_Slot: @cellphone.No_Sim_Slot, OS: @cellphone.OS, Size_of_Screen: @cellphone.Size_of_Screen, Stock: @cellphone.Stock, Year_Released: @cellphone.Year_Released } }
    end

    assert_redirected_to cellphone_url(Cellphone.last)
  end

  test "should show cellphone" do
    get cellphone_url(@cellphone)
    assert_response :success
  end

  test "should get edit" do
    get edit_cellphone_url(@cellphone)
    assert_response :success
  end

  test "should update cellphone" do
    patch cellphone_url(@cellphone), params: { cellphone: { Brand: @cellphone.Brand, Camera: @cellphone.Camera, Internal_Storage: @cellphone.Internal_Storage, Mpixel: @cellphone.Mpixel, Name: @cellphone.Name, No_Sim_Slot: @cellphone.No_Sim_Slot, OS: @cellphone.OS, Size_of_Screen: @cellphone.Size_of_Screen, Stock: @cellphone.Stock, Year_Released: @cellphone.Year_Released } }
    assert_redirected_to cellphone_url(@cellphone)
  end

  test "should destroy cellphone" do
    assert_difference('Cellphone.count', -1) do
      delete cellphone_url(@cellphone)
    end

    assert_redirected_to cellphones_url
  end
end
