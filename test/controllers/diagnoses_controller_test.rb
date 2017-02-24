require 'test_helper'

class DiagnosesControllerTest < ActionController::TestCase
  setup do
    @diagnosis = diagnoses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diagnoses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diagnosis" do
    assert_difference('Diagnosis.count') do
      post :create, diagnosis: { date_diagnosis: @diagnosis.date_diagnosis, disease_id: @diagnosis.disease_id, doctor_id: @diagnosis.doctor_id, name_clinic: @diagnosis.name_clinic, patient_id: @diagnosis.patient_id }
    end

    assert_redirected_to diagnosis_path(assigns(:diagnosis))
  end

  test "should show diagnosis" do
    get :show, id: @diagnosis
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diagnosis
    assert_response :success
  end

  test "should update diagnosis" do
    patch :update, id: @diagnosis, diagnosis: { date_diagnosis: @diagnosis.date_diagnosis, disease_id: @diagnosis.disease_id, doctor_id: @diagnosis.doctor_id, name_clinic: @diagnosis.name_clinic, patient_id: @diagnosis.patient_id }
    assert_redirected_to diagnosis_path(assigns(:diagnosis))
  end

  test "should destroy diagnosis" do
    assert_difference('Diagnosis.count', -1) do
      delete :destroy, id: @diagnosis
    end

    assert_redirected_to diagnoses_path
  end
end
