require 'test_helper'

class Admin::AdministradoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_administrador = admin_administradores(:one)
  end

  test "should get index" do
    get admin_administradores_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_administrador_url
    assert_response :success
  end

  test "should create admin_administrador" do
    assert_difference('Admin::Administrador.count') do
      post admin_administradores_url, params: { admin_administrador: { admin_departamento_id: @admin_administrador.admin_departamento_id, cpf: @admin_administrador.cpf, email: @admin_administrador.email, nome: @admin_administrador.nome, senha: @admin_administrador.senha } }
    end

    assert_redirected_to admin_administrador_url(Admin::Administrador.last)
  end

  test "should show admin_administrador" do
    get admin_administrador_url(@admin_administrador)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_administrador_url(@admin_administrador)
    assert_response :success
  end

  test "should update admin_administrador" do
    patch admin_administrador_url(@admin_administrador), params: { admin_administrador: { admin_departamento_id: @admin_administrador.admin_departamento_id, cpf: @admin_administrador.cpf, email: @admin_administrador.email, nome: @admin_administrador.nome, senha: @admin_administrador.senha } }
    assert_redirected_to admin_administrador_url(@admin_administrador)
  end

  test "should destroy admin_administrador" do
    assert_difference('Admin::Administrador.count', -1) do
      delete admin_administrador_url(@admin_administrador)
    end

    assert_redirected_to admin_administradores_url
  end
end
