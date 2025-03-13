require "test_helper"

class StockItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stock_item = stock_items(:one)
  end

  test "should get index" do
    get stock_items_url, as: :json
    assert_response :success
  end

  test "should create stock_item" do
    assert_difference("StockItem.count") do
      post stock_items_url, params: { stock_item: { product_id: @stock_item.product_id, quantity: @stock_item.quantity, store_id: @stock_item.store_id } }, as: :json
    end

    assert_response :created
  end

  test "should show stock_item" do
    get stock_item_url(@stock_item), as: :json
    assert_response :success
  end

  test "should update stock_item" do
    patch stock_item_url(@stock_item), params: { stock_item: { product_id: @stock_item.product_id, quantity: @stock_item.quantity, store_id: @stock_item.store_id } }, as: :json
    assert_response :success
  end

  test "should destroy stock_item" do
    assert_difference("StockItem.count", -1) do
      delete stock_item_url(@stock_item), as: :json
    end

    assert_response :no_content
  end
end
