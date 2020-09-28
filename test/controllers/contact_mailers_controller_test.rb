require 'test_helper'

class ContactMailersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact_mailer = contact_mailers(:one)
  end

  test "should get index" do
    get contact_mailers_url
    assert_response :success
  end

  test "should get new" do
    get new_contact_mailer_url
    assert_response :success
  end

  test "should create contact_mailer" do
    assert_difference('ContactMailer.count') do
      post contact_mailers_url, params: { contact_mailer: {  } }
    end

    assert_redirected_to contact_mailer_url(ContactMailer.last)
  end

  test "should show contact_mailer" do
    get contact_mailer_url(@contact_mailer)
    assert_response :success
  end

  test "should get edit" do
    get edit_contact_mailer_url(@contact_mailer)
    assert_response :success
  end

  test "should update contact_mailer" do
    patch contact_mailer_url(@contact_mailer), params: { contact_mailer: {  } }
    assert_redirected_to contact_mailer_url(@contact_mailer)
  end

  test "should destroy contact_mailer" do
    assert_difference('ContactMailer.count', -1) do
      delete contact_mailer_url(@contact_mailer)
    end

    assert_redirected_to contact_mailers_url
  end
end
