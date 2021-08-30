require "test_helper"

class MaquinasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @maquina = maquinas(:one)
  end

  test "should get index" do
    get maquinas_url
    assert_response :success
  end

  test "should get new" do
    get new_maquina_url
    assert_response :success
  end

  test "should create maquina" do
    assert_difference('Maquina.count') do
      post maquinas_url, params: { maquina: { compra: @maquina.compra, descricao: @maquina.descricao, garantia: @maquina.garantia, nome: @maquina.nome, quebrada: @maquina.quebrada, tipo: @maquina.tipo } }
    end

    assert_redirected_to maquina_url(Maquina.last)
  end

  test "should show maquina" do
    get maquina_url(@maquina)
    assert_response :success
  end

  test "should get edit" do
    get edit_maquina_url(@maquina)
    assert_response :success
  end

  test "should update maquina" do
    patch maquina_url(@maquina), params: { maquina: { compra: @maquina.compra, descricao: @maquina.descricao, garantia: @maquina.garantia, nome: @maquina.nome, quebrada: @maquina.quebrada, tipo: @maquina.tipo } }
    assert_redirected_to maquina_url(@maquina)
  end

  test "should destroy maquina" do
    assert_difference('Maquina.count', -1) do
      delete maquina_url(@maquina)
    end

    assert_redirected_to maquinas_url
  end
end
