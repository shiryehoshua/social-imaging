require 'test_helper'

class ImageBlocksControllerTest < ActionController::TestCase
  setup do
    @image_block = image_blocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:image_blocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create image_block" do
    assert_difference('ImageBlock.count') do
      post :create, image_block: { height: @image_block.height, left_coord: @image_block.left_coord, right_coord: @image_block.right_coord, width: @image_block.width }
    end

    assert_redirected_to image_block_path(assigns(:image_block))
  end

  test "should show image_block" do
    get :show, id: @image_block
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @image_block
    assert_response :success
  end

  test "should update image_block" do
    put :update, id: @image_block, image_block: { height: @image_block.height, left_coord: @image_block.left_coord, right_coord: @image_block.right_coord, width: @image_block.width }
    assert_redirected_to image_block_path(assigns(:image_block))
  end

  test "should destroy image_block" do
    assert_difference('ImageBlock.count', -1) do
      delete :destroy, id: @image_block
    end

    assert_redirected_to image_blocks_path
  end
end
