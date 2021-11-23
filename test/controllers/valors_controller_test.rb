require "test_helper"

class ValorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @valor = valors(:one)
  end

  test "should get index" do
    get valors_url, as: :json
    assert_response :success
  end

  test "should create valor" do
    assert_difference('Valor.count') do
      post valors_url, params: { valor: { date: @valor.date, uf: @valor.uf } }, as: :json
    end

    assert_response 201
  end

  test "should show valor" do
    get valor_url(@valor), as: :json
    assert_response :success
  end

  test "should update valor" do
    patch valor_url(@valor), params: { valor: { date: @valor.date, uf: @valor.uf } }, as: :json
    assert_response 200
  end

  test "should destroy valor" do
    assert_difference('Valor.count', -1) do
      delete valor_url(@valor), as: :json
    end

    assert_response 204
  end
end
