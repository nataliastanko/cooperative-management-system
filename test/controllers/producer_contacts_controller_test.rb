require 'test_helper'

class ProducerContactsControllerTest < ActionController::TestCase
  setup do
    @producer_contact = producer_contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:producer_contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create producer_contact" do
    assert_difference('ProducerContact.count') do
      post :create, producer_contact: { description: @producer_contact.description, firstname: @producer_contact.firstname, lastname: @producer_contact.lastname, phone: @producer_contact.phone }
    end

    assert_redirected_to producer_contact_path(assigns(:producer_contact))
  end

  test "should show producer_contact" do
    get :show, id: @producer_contact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @producer_contact
    assert_response :success
  end

  test "should update producer_contact" do
    patch :update, id: @producer_contact, producer_contact: { description: @producer_contact.description, firstname: @producer_contact.firstname, lastname: @producer_contact.lastname, phone: @producer_contact.phone }
    assert_redirected_to producer_contact_path(assigns(:producer_contact))
  end

  test "should destroy producer_contact" do
    assert_difference('ProducerContact.count', -1) do
      delete :destroy, id: @producer_contact
    end

    assert_redirected_to producer_contacts_path
  end
end
