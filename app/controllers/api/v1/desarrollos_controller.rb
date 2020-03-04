class Api::V1::DesarrollosController < ApplicationController
  before_action :set_desarrollo, only: [:show, :update, :destroy]

  # GET /desarrollos
  def index
    @desarrollos = Desarrollo.all

    render json: @desarrollos
  end

  # GET /desarrollos/1
  def show
    render json: @desarrollo
  end

  # POST /desarrollos
  def create
    @desarrollo = Desarrollo.new(desarrollo_params)

    if @desarrollo.save
      render json: @desarrollo, status: :created
    else
      render json: @desarrollo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /desarrollos/1
  def update
    if @desarrollo.update(desarrollo_params)
      render json: @desarrollo
    else
      render json: @desarrollo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /desarrollos/1
  def destroy
    @desarrollo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_desarrollo
      @desarrollo = Desarrollo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def desarrollo_params
      params.require(:desarrollo).permit(:politicas, :entornos, :funcionalidad, :aceptacion, :empresa_id)
    end
end
