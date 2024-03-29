require 'test_helper'

class ProductsStoresControllerTest < ActionController::TestCase
  setup do
    @products_store = products_stores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products_stores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create products_store" do
    assert_difference('ProductsStore.count') do
      post :create, products_store: { price: @products_store.price, product_id: @products_store.product_id, store_id: @products_store.store_id }
    end

    assert_redirected_to products_store_path(assigns(:products_store))
  end

  test "should show products_store" do
    get :show, id: @products_store
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @products_store
    assert_response :success
  end

  test "should update products_store" do
    put :update, id: @products_store, products_store: { price: @products_store.price, product_id: @products_store.product_id, store_id: @products_store.store_id }
    assert_redirected_to products_store_path(assigns(:products_store))
  end

  test "should destroy products_store" do
    assert_difference('ProductsStore.count', -1) do
      delete :destroy, id: @products_store
    end

    assert_redirected_to products_stores_path
  end
end
