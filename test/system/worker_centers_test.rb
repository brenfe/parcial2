require "application_system_test_case"

class WorkerCentersTest < ApplicationSystemTestCase
  setup do
    @worker_center = worker_centers(:one)
  end

  test "visiting the index" do
    visit worker_centers_url
    assert_selector "h1", text: "Worker Centers"
  end

  test "creating a Worker center" do
    visit worker_centers_url
    click_on "New Worker Center"

    fill_in "Medical center", with: @worker_center.medical_center_id
    fill_in "Worker", with: @worker_center.worker_id
    click_on "Create Worker center"

    assert_text "Worker center was successfully created"
    click_on "Back"
  end

  test "updating a Worker center" do
    visit worker_centers_url
    click_on "Edit", match: :first

    fill_in "Medical center", with: @worker_center.medical_center_id
    fill_in "Worker", with: @worker_center.worker_id
    click_on "Update Worker center"

    assert_text "Worker center was successfully updated"
    click_on "Back"
  end

  test "destroying a Worker center" do
    visit worker_centers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Worker center was successfully destroyed"
  end
end
