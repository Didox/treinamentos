require 'test_helper'

class Admin::ClientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_cliente = admin_clientes(:one)
  end

  test "should get index" do
    get admin_clientes_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_cliente_url
    assert_response :success
  end

  test "should create admin_cliente" do
    assert_difference('Admin::Cliente.count') do
      post admin_clientes_url, params: { admin_cliente: { cnpj: @admin_cliente.cnpj, email: @admin_cliente.email, nome_fantasia: @admin_cliente.nome_fantasia, nome_responsavel: @admin_cliente.nome_responsavel, razao_social: @admin_cliente.razao_social, status: @admin_cliente.status, telefone: @admin_cliente.telefone } }
    end

    assert_redirected_to admin_cliente_url(Admin::Cliente.last)
  end

  test "should show admin_cliente" do
    get admin_cliente_url(@admin_cliente)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_cliente_url(@admin_cliente)
    assert_response :success
  end

  test "should update admin_cliente" do
    patch admin_cliente_url(@admin_cliente), params: { admin_cliente: { cnpj: @admin_cliente.cnpj, email: @admin_cliente.email, nome_fantasia: @admin_cliente.nome_fantasia, nome_responsavel: @admin_cliente.nome_responsavel, razao_social: @admin_cliente.razao_social, status: @admin_cliente.status, telefone: @admin_cliente.telefone } }
    assert_redirected_to admin_cliente_url(@admin_cliente)
  end

  test "should destroy admin_cliente" do
    assert_difference('Admin::Cliente.count', -1) do
      delete admin_cliente_url(@admin_cliente)
    end

    assert_redirected_to admin_clientes_url
  end
end
