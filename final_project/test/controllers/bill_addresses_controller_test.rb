require 'test_helper'

class BillAddressesControllerTest < ActionController::TestCase
  setup do
    @bill_address = bill_addresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bill_addresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bill_address" do
    assert_difference('BillAddress.count') do
      post :create, bill_address: { address: @bill_address.address, country: @bill_address.country, customer_id: @bill_address.customer_id, postal_code: @bill_address.postal_code, state_province: @bill_address.state_province }
    end

    assert_redirected_to bill_address_path(assigns(:bill_address))
  end

  test "should show bill_address" do
    get :show, id: @bill_address
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bill_address
    assert_response :success
  end

  test "should update bill_address" do
    patch :update, id: @bill_address, bill_address: { address: @bill_address.address, country: @bill_address.country, customer_id: @bill_address.customer_id, postal_code: @bill_address.postal_code, state_province: @bill_address.state_province }
    assert_redirected_to bill_address_path(assigns(:bill_address))
  end

  test "should destroy bill_address" do
    assert_difference('BillAddress.count', -1) do
      delete :destroy, id: @bill_address
    end

    assert_redirected_to bill_addresses_path
  end
end
