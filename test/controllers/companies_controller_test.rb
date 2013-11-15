require 'test_helper'

class CompaniesControllerTest < ActionController::TestCase
  setup do
    @company = companies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:companies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create company" do
    assert_difference('Company.count') do
      post :create, company: { address1: @company.address1, address2: @company.address2, assigned_to: @company.assigned_to, city: @company.city, comments: @company.comments, company_name: @company.company_name, email: @company.email, fax: @company.fax, mobile_phone: @company.mobile_phone, phone: @company.phone, state: @company.state, support_package: @company.support_package, tags: @company.tags, zip: @company.zip }
    end

    assert_redirected_to company_path(assigns(:company))
  end

  test "should show company" do
    get :show, id: @company
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @company
    assert_response :success
  end

  test "should update company" do
    patch :update, id: @company, company: { address1: @company.address1, address2: @company.address2, assigned_to: @company.assigned_to, city: @company.city, comments: @company.comments, company_name: @company.company_name, email: @company.email, fax: @company.fax, mobile_phone: @company.mobile_phone, phone: @company.phone, state: @company.state, support_package: @company.support_package, tags: @company.tags, zip: @company.zip }
    assert_redirected_to company_path(assigns(:company))
  end

  test "should destroy company" do
    assert_difference('Company.count', -1) do
      delete :destroy, id: @company
    end

    assert_redirected_to companies_path
  end
end
