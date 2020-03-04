require 'test_helper'

class PoliticasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @politica = politicas(:one)
  end

  test "should get index" do
    get politicas_url, as: :json
    assert_response :success
  end

  test "should create politica" do
    assert_difference('Politica.count') do
      post politicas_url, params: { politica: { conjunto_politicas: @politica.conjunto_politicas, revision_politicas: @politica.revision_politicas } }, as: :json
    end

    assert_response 201
  end

  test "should show politica" do
    get politica_url(@politica), as: :json
    assert_response :success
  end

  test "should update politica" do
    patch politica_url(@politica), params: { politica: { conjunto_politicas: @politica.conjunto_politicas, revision_politicas: @politica.revision_politicas } }, as: :json
    assert_response 200
  end

  test "should destroy politica" do
    assert_difference('Politica.count', -1) do
      delete politica_url(@politica), as: :json
    end

    assert_response 204
  end
end
