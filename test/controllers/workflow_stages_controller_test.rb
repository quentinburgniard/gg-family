require 'test_helper'

class WorkflowStagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @workflow_stage = workflow_stages(:one)
  end

  test "should get index" do
    get workflow_stages_url
    assert_response :success
  end

  test "should get new" do
    get new_workflow_stage_url
    assert_response :success
  end

  test "should create workflow_stage" do
    assert_difference('WorkflowStage.count') do
      post workflow_stages_url, params: { workflow_stage: { description: @workflow_stage.description, name: @workflow_stage.name } }
    end

    assert_redirected_to workflow_stage_url(WorkflowStage.last)
  end

  test "should show workflow_stage" do
    get workflow_stage_url(@workflow_stage)
    assert_response :success
  end

  test "should get edit" do
    get edit_workflow_stage_url(@workflow_stage)
    assert_response :success
  end

  test "should update workflow_stage" do
    patch workflow_stage_url(@workflow_stage), params: { workflow_stage: { description: @workflow_stage.description, name: @workflow_stage.name } }
    assert_redirected_to workflow_stage_url(@workflow_stage)
  end

  test "should destroy workflow_stage" do
    assert_difference('WorkflowStage.count', -1) do
      delete workflow_stage_url(@workflow_stage)
    end

    assert_redirected_to workflow_stages_url
  end
end
