class Api::V1::EmpresasController < ApplicationController

  def index 
    @empresas = Empresa.all
    render json: @empresas, include: [:politica]
  end

  def show
    @empresa = Empresa.find(params[:id])
    render json: @empresa, include: [:politica]
  end
end
