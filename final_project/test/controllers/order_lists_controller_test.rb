require 'test_helper'

class OrderListsControllerTest < ActionController::TestCase
  setup do
    @order_list = order_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order_list" do
    assert_difference('OrderList.count') do
      post :create, order_list: { num_ordered: @order_list.num_ordered, order_id: @order_list.order_id, price: @order_list.price, product_id: @order_list.product_id }
    end

    assert_redirected_to order_list_path(assigns(:order_list))
  end

  test "should show order_list" do
    get :show, id: @order_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order_list
    assert_response :success
  end

  test "should update order_list" do
    patch :update, id: @order_list, order_list: { num_ordered: @order_list.num_ordered, order_id: @order_list.order_id, price: @order_list.price, product_id: @order_list.product_id }
    assert_redirected_to order_list_path(assigns(:order_list))
  end

  test "should destroy order_list" do
    assert_difference('OrderList.count', -1) do
      delete :destroy, id: @order_list
    end

    assert_redirected_to order_lists_path
  end
end
