class Api::V1::PoliticasController < ApplicationController
  before_action :set_politica, only: [:show, :update, :destroy]

  # GET /politicas
  def index
    @politicas = Politica.all

    render json: @politicas
  end

  # GET /politicas/1
  def show
    render json: @politica
  end

  # POST /politicas
  def create
    @politica = Politica.new(politica_params)

    if @politica.save
      render json: @politica, status: :created
    else
      render json: @politica.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /politicas/1
  def update
    if @politica.update(politica_params)
      render json: @politica
    else
      render json: @politica.errors, status: :unprocessable_entity
    end
  end

  # DELETE /politicas/1
  def destroy
    @politica.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_politica
      @politica = Politica.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def politica_params
      params.require(:politica).permit(:conjunto_politicas, :revision_politicas, :empresa_id)
    end
end
