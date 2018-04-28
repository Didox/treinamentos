require 'test_helper'

class Admin::ProjetosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_projeto = admin_projetos(:one)
  end

  test "should get index" do
    get admin_projetos_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_projeto_url
    assert_response :success
  end

  test "should create admin_projeto" do
    assert_difference('Admin::Projeto.count') do
      post admin_projetos_url, params: { admin_projeto: { admin_cliente_id: @admin_projeto.admin_cliente_id, email_responsavel: @admin_projeto.email_responsavel, nome_projeto: @admin_projeto.nome_projeto, pdv_file: @admin_projeto.pdv_file, pdv_qtd: @admin_projeto.pdv_qtd, responsavel_projeto: @admin_projeto.responsavel_projeto } }
    end

    assert_redirected_to admin_projeto_url(Admin::Projeto.last)
  end

  test "should show admin_projeto" do
    get admin_projeto_url(@admin_projeto)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_projeto_url(@admin_projeto)
    assert_response :success
  end

  test "should update admin_projeto" do
    patch admin_projeto_url(@admin_projeto), params: { admin_projeto: { admin_cliente_id: @admin_projeto.admin_cliente_id, email_responsavel: @admin_projeto.email_responsavel, nome_projeto: @admin_projeto.nome_projeto, pdv_file: @admin_projeto.pdv_file, pdv_qtd: @admin_projeto.pdv_qtd, responsavel_projeto: @admin_projeto.responsavel_projeto } }
    assert_redirected_to admin_projeto_url(@admin_projeto)
  end

  test "should destroy admin_projeto" do
    assert_difference('Admin::Projeto.count', -1) do
      delete admin_projeto_url(@admin_projeto)
    end

    assert_redirected_to admin_projetos_url
  end
end
