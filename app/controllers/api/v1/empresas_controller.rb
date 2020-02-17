class Api::V1::EmpresasController < ApplicationController
  before_action :set_empresa, only: [ :show, :update, :destroy]
  before_action :set_models, only: [:index, :show]

  def index 
    @empresas = Empresa.all
    render json: @empresas, include: @models
  end

  def show
    render json: @empresa, include: @models
  end


  def create
    @empresa = Empresa.new(empresa_params)
    if @empresa.save
      render json: @empresa, status: :created
    else 
      render json: @empresa.errors, status: :unprocessable_entity
    end
  end

  def update
    if @empresa.update(empresa_params)
      render json: @empresa
    else 
      render json: @empresa.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @empresa.destroy
  end

  private 

    def set_empresa
      @empresa = Empresa.find(params[:id])
    end

    def set_models
      @models = [:politica]
    end
    def empresa_params
      params.require(:empresa).permit(:name, :description)
    end
end
