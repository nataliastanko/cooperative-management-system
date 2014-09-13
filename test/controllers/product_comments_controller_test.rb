require 'test_helper'

class ProductCommentsControllerTest < ActionController::TestCase
  setup do
    @product_comment = product_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_comment" do
    assert_difference('ProductComment.count') do
      post :create, product_comment: { content: @product_comment.content }
    end

    assert_redirected_to product_comment_path(assigns(:product_comment))
  end

  test "should show product_comment" do
    get :show, id: @product_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_comment
    assert_response :success
  end

  test "should update product_comment" do
    patch :update, id: @product_comment, product_comment: { content: @product_comment.content }
    assert_redirected_to product_comment_path(assigns(:product_comment))
  end

  test "should destroy product_comment" do
    assert_difference('ProductComment.count', -1) do
      delete :destroy, id: @product_comment
    end

    assert_redirected_to product_comments_path
  end
end
