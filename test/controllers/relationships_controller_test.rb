require 'test_helper'

class RelationshipsControllerTest < ActionController::TestCase
  setup do
    @relationship = relationships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:relationships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create relationship" do
    assert_difference('Relationship.count') do
      post :create, relationship: { date_ended: @relationship.date_ended, date_started: @relationship.date_started, family_id: @relationship.family_id, other_details: @relationship.other_details, person_1_id: @relationship.person_1_id, person_2_id: @relationship.person_2_id, relationship_type_id: @relationship.relationship_type_id, role_1_id: @relationship.role_1_id, role_2_id: @relationship.role_2_id }
    end

    assert_redirected_to relationship_path(assigns(:relationship))
  end

  test "should show relationship" do
    get :show, id: @relationship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @relationship
    assert_response :success
  end

  test "should update relationship" do
    patch :update, id: @relationship, relationship: { date_ended: @relationship.date_ended, date_started: @relationship.date_started, family_id: @relationship.family_id, other_details: @relationship.other_details, person_1_id: @relationship.person_1_id, person_2_id: @relationship.person_2_id, relationship_type_id: @relationship.relationship_type_id, role_1_id: @relationship.role_1_id, role_2_id: @relationship.role_2_id }
    assert_redirected_to relationship_path(assigns(:relationship))
  end

  test "should destroy relationship" do
    assert_difference('Relationship.count', -1) do
      delete :destroy, id: @relationship
    end

    assert_redirected_to relationships_path
  end
end
