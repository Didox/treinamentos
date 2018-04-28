class Admin::DepartamentosController < ApplicationController
  before_action :set_admin_departamento, only: [:show, :edit, :update, :destroy]

  # GET /admin/departamentos
  # GET /admin/departamentos.json
  def index
    @admin_departamentos = Admin::Departamento.all
  end

  # GET /admin/departamentos/1
  # GET /admin/departamentos/1.json
  def show
  end

  # GET /admin/departamentos/new
  def new
    @admin_departamento = Admin::Departamento.new
  end

  # GET /admin/departamentos/1/edit
  def edit
  end

  # POST /admin/departamentos
  # POST /admin/departamentos.json
  def create
    @admin_departamento = Admin::Departamento.new(admin_departamento_params)

    respond_to do |format|
      if @admin_departamento.save
        format.html { redirect_to @admin_departamento, notice: 'Departamento was successfully created.' }
        format.json { render :show, status: :created, location: @admin_departamento }
      else
        format.html { render :new }
        format.json { render json: @admin_departamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/departamentos/1
  # PATCH/PUT /admin/departamentos/1.json
  def update
    respond_to do |format|
      if @admin_departamento.update(admin_departamento_params)
        format.html { redirect_to @admin_departamento, notice: 'Departamento was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_departamento }
      else
        format.html { render :edit }
        format.json { render json: @admin_departamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/departamentos/1
  # DELETE /admin/departamentos/1.json
  def destroy
    @admin_departamento.destroy
    respond_to do |format|
      format.html { redirect_to admin_departamentos_url, notice: 'Departamento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_departamento
      @admin_departamento = Admin::Departamento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_departamento_params
      params.require(:admin_departamento).permit(:nome)
    end
end
