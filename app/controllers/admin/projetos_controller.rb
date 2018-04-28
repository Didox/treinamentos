class Admin::ProjetosController < ApplicationController
  before_action :set_admin_projeto, only: [:show, :edit, :update, :destroy]

  # GET /admin/projetos
  # GET /admin/projetos.json
  def index
    @admin_projetos = Admin::Projeto.all
  end

  # GET /admin/projetos/1
  # GET /admin/projetos/1.json
  def show
  end

  # GET /admin/projetos/new
  def new
    @admin_projeto = Admin::Projeto.new
  end

  # GET /admin/projetos/1/edit
  def edit
  end

  # POST /admin/projetos
  # POST /admin/projetos.json
  def create
    @admin_projeto = Admin::Projeto.new(admin_projeto_params)

    respond_to do |format|
      if @admin_projeto.save
        format.html { redirect_to @admin_projeto, notice: 'Projeto was successfully created.' }
        format.json { render :show, status: :created, location: @admin_projeto }
      else
        format.html { render :new }
        format.json { render json: @admin_projeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/projetos/1
  # PATCH/PUT /admin/projetos/1.json
  def update
    respond_to do |format|
      if @admin_projeto.update(admin_projeto_params)
        format.html { redirect_to @admin_projeto, notice: 'Projeto was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_projeto }
      else
        format.html { render :edit }
        format.json { render json: @admin_projeto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/projetos/1
  # DELETE /admin/projetos/1.json
  def destroy
    @admin_projeto.destroy
    respond_to do |format|
      format.html { redirect_to admin_projetos_url, notice: 'Projeto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_projeto
      @admin_projeto = Admin::Projeto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_projeto_params
      params.require(:admin_projeto).permit(:nome_projeto, :responsavel_projeto, :email_responsavel, :pdv, :pdv_qtd, :cliente)
    end
end
