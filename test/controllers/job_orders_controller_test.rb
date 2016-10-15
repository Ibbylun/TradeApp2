require 'test_helper'

class JobOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_order = job_orders(:one)
  end

  test "should get index" do
    get job_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_job_order_url
    assert_response :success
  end

  test "should create job_order" do
    assert_difference('JobOrder.count') do
      post job_orders_url, params: { job_order: { clientId: @job_order.clientId, description: @job_order.description, grossAmount: @job_order.grossAmount, materials: @job_order.materials, netAmount: @job_order.netAmount, startTime: @job_order.startTime, stopTime: @job_order.stopTime, teamId: @job_order.teamId } }
    end

    assert_redirected_to job_order_url(JobOrder.last)
  end

  test "should show job_order" do
    get job_order_url(@job_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_order_url(@job_order)
    assert_response :success
  end

  test "should update job_order" do
    patch job_order_url(@job_order), params: { job_order: { clientId: @job_order.clientId, description: @job_order.description, grossAmount: @job_order.grossAmount, materials: @job_order.materials, netAmount: @job_order.netAmount, startTime: @job_order.startTime, stopTime: @job_order.stopTime, teamId: @job_order.teamId } }
    assert_redirected_to job_order_url(@job_order)
  end

  test "should destroy job_order" do
    assert_difference('JobOrder.count', -1) do
      delete job_order_url(@job_order)
    end

    assert_redirected_to job_orders_url
  end
end
