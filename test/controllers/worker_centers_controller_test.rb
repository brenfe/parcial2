require "test_helper"

class WorkerCentersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @worker_center = worker_centers(:one)
  end

  test "should get index" do
    get worker_centers_url
    assert_response :success
  end

  test "should get new" do
    get new_worker_center_url
    assert_response :success
  end

  test "should create worker_center" do
    assert_difference('WorkerCenter.count') do
      post worker_centers_url, params: { worker_center: { medical_center_id: @worker_center.medical_center_id, worker_id: @worker_center.worker_id } }
    end

    assert_redirected_to worker_center_url(WorkerCenter.last)
  end

  test "should show worker_center" do
    get worker_center_url(@worker_center)
    assert_response :success
  end

  test "should get edit" do
    get edit_worker_center_url(@worker_center)
    assert_response :success
  end

  test "should update worker_center" do
    patch worker_center_url(@worker_center), params: { worker_center: { medical_center_id: @worker_center.medical_center_id, worker_id: @worker_center.worker_id } }
    assert_redirected_to worker_center_url(@worker_center)
  end

  test "should destroy worker_center" do
    assert_difference('WorkerCenter.count', -1) do
      delete worker_center_url(@worker_center)
    end

    assert_redirected_to worker_centers_url
  end
end
