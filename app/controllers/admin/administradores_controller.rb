class Admin::AdministradoresController < ApplicationController
  before_action :set_admin_administrador, only: [:show, :edit, :update, :destroy]

  # GET /admin/administradores
  # GET /admin/administradores.json
  def index
    @admin_administradores = Admin::Administrador.all
  end

  # GET /admin/administradores/1
  # GET /admin/administradores/1.json
  def show
  end

  # GET /admin/administradores/new
  def new
    @admin_administrador = Admin::Administrador.new
  end

  # GET /admin/administradores/1/edit
  def edit
  end

  # POST /admin/administradores
  # POST /admin/administradores.json
  def create
    @admin_administrador = Admin::Administrador.new(admin_administrador_params)

    respond_to do |format|
      if @admin_administrador.save
        format.html { redirect_to @admin_administrador, notice: 'Administrador was successfully created.' }
        format.json { render :show, status: :created, location: @admin_administrador }
      else
        format.html { render :new }
        format.json { render json: @admin_administrador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/administradores/1
  # PATCH/PUT /admin/administradores/1.json
  def update
    respond_to do |format|
      if @admin_administrador.update(admin_administrador_params)
        format.html { redirect_to @admin_administrador, notice: 'Administrador was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_administrador }
      else
        format.html { render :edit }
        format.json { render json: @admin_administrador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/administradores/1
  # DELETE /admin/administradores/1.json
  def destroy
    @admin_administrador.destroy
    respond_to do |format|
      format.html { redirect_to admin_administradores_url, notice: 'Administrador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_administrador
      @admin_administrador = Admin::Administrador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_administrador_params
      params.require(:admin_administrador).permit(:nome, :cpf, :admin_departamento_id, :email, :senha)
    end
end
