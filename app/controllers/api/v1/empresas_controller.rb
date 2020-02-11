class Api::V1::EmpresasController < ApplicationController

  def index 
    @empresas = Empresa.all
    render json: @empresas, include: [:politica]
  end
end
