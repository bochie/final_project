require 'test_helper'

class ProdcutsControllerTest < ActionController::TestCase
  setup do
    @prodcut = prodcuts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prodcuts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prodcut" do
    assert_difference('Prodcut.count') do
      post :create, prodcut: { name: @prodcut.name, price: @prodcut.price, product_id: @prodcut.product_id, qty_on_hand: @prodcut.qty_on_hand }
    end

    assert_redirected_to prodcut_path(assigns(:prodcut))
  end

  test "should show prodcut" do
    get :show, id: @prodcut
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prodcut
    assert_response :success
  end

  test "should update prodcut" do
    patch :update, id: @prodcut, prodcut: { name: @prodcut.name, price: @prodcut.price, product_id: @prodcut.product_id, qty_on_hand: @prodcut.qty_on_hand }
    assert_redirected_to prodcut_path(assigns(:prodcut))
  end

  test "should destroy prodcut" do
    assert_difference('Prodcut.count', -1) do
      delete :destroy, id: @prodcut
    end

    assert_redirected_to prodcuts_path
  end
end
