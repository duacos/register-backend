class Api::V1::EmpresasController < ApplicationController
  before_action :set_empresa, only: [:show, :update, :destroy]
  before_action :set_models, only: [ :index, :show]

  # GET /empresas
  def index
    @empresas = Empresa.all

    render json: @empresas, include: @models
  end

  # GET /empresas/1
  def show
    render json: @empresa, include: @models
  end

  # POST /empresas
  def create
    @empresa = Empresa.new(empresa_params)

    if @empresa.save
      render json: @empresa, status: :created
    else
      render json: @empresa.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /empresas/1
  def update
    if @empresa.update(empresa_params)
      render json: @empresa
    else
      render json: @empresa.errors, status: :unprocessable_entity
    end
  end

  # DELETE /empresas/1
  def destroy
    @empresa.destroy
  end

  private

    def set_models
      @models = [:politica, :desarrollo, :tele]
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_empresa
      @empresa = Empresa.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def empresa_params
      params.require(:empresa).permit(:name, :description)
    end
end
