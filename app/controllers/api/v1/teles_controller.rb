class Api::V1::TelesController < ApplicationController
  before_action :set_tele, only: [:show, :update, :destroy]

  # GET /teles
  def index
    @teles = Tele.all

    render json: @teles
  end

  # GET /teles/1
  def show
    render json: @tele
  end

  # POST /teles
  def create
    @tele = Tele.new(tele_params)

    if @tele.save
      render json: @tele, status: :created
    else
      render json: @tele.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /teles/1
  def update
    if @tele.update(tele_params)
      render json: @tele
    else
      render json: @tele.errors, status: :unprocessable_entity
    end
  end

  # DELETE /teles/1
  def destroy
    @tele.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tele
      @tele = Tele.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tele_params
      params.require(:tele).permit(:controles_red, :mecanismos_seg, :segregacion_redes, :procedimientos, :intercambio, :mensajeria, :confidencialidad, :empresa_id)
    end
end
