require 'test_helper'

class InfosControllerTest < ActionController::TestCase
  setup do
    @info = infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create info" do
    assert_difference('Info.count') do
      post :create, info: { DOB: @info.DOB, DOJ: @info.DOJ, Expericence/fresher: @info.Expericence/fresher, Reference_contact_no: @info.Reference_contact_no, address: @info.address, contact_no: @info.contact_no, father_name: @info.father_name, first_name: @info.first_name, last_name: @info.last_name, prevoius_company: @info.prevoius_company, probation/training/permanant: @info.probation/training/permanant, sallry/annum: @info.sallry/annum }
    end

    assert_redirected_to info_path(assigns(:info))
  end

  test "should show info" do
    get :show, id: @info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @info
    assert_response :success
  end

  test "should update info" do
    patch :update, id: @info, info: { DOB: @info.DOB, DOJ: @info.DOJ, Expericence/fresher: @info.Expericence/fresher, Reference_contact_no: @info.Reference_contact_no, address: @info.address, contact_no: @info.contact_no, father_name: @info.father_name, first_name: @info.first_name, last_name: @info.last_name, prevoius_company: @info.prevoius_company, probation/training/permanant: @info.probation/training/permanant, sallry/annum: @info.sallry/annum }
    assert_redirected_to info_path(assigns(:info))
  end

  test "should destroy info" do
    assert_difference('Info.count', -1) do
      delete :destroy, id: @info
    end

    assert_redirected_to infos_path
  end
end
