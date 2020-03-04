require 'test_helper'

class DesarrollosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @desarrollo = desarrollos(:one)
  end

  test "should get index" do
    get desarrollos_url, as: :json
    assert_response :success
  end

  test "should create desarrollo" do
    assert_difference('Desarrollo.count') do
      post desarrollos_url, params: { desarrollo: { aceptacion: @desarrollo.aceptacion, entornos: @desarrollo.entornos, funcionalidad: @desarrollo.funcionalidad, politicas: @desarrollo.politicas } }, as: :json
    end

    assert_response 201
  end

  test "should show desarrollo" do
    get desarrollo_url(@desarrollo), as: :json
    assert_response :success
  end

  test "should update desarrollo" do
    patch desarrollo_url(@desarrollo), params: { desarrollo: { aceptacion: @desarrollo.aceptacion, entornos: @desarrollo.entornos, funcionalidad: @desarrollo.funcionalidad, politicas: @desarrollo.politicas } }, as: :json
    assert_response 200
  end

  test "should destroy desarrollo" do
    assert_difference('Desarrollo.count', -1) do
      delete desarrollo_url(@desarrollo), as: :json
    end

    assert_response 204
  end
end
