require "application_system_test_case"

class ContactMailersTest < ApplicationSystemTestCase
  setup do
    @contact_mailer = contact_mailers(:one)
  end

  test "visiting the index" do
    visit contact_mailers_url
    assert_selector "h1", text: "Contact Mailers"
  end

  test "creating a Contact mailer" do
    visit contact_mailers_url
    click_on "New Contact Mailer"

    click_on "Create Contact mailer"

    assert_text "Contact mailer was successfully created"
    click_on "Back"
  end

  test "updating a Contact mailer" do
    visit contact_mailers_url
    click_on "Edit", match: :first

    click_on "Update Contact mailer"

    assert_text "Contact mailer was successfully updated"
    click_on "Back"
  end

  test "destroying a Contact mailer" do
    visit contact_mailers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contact mailer was successfully destroyed"
  end
end
