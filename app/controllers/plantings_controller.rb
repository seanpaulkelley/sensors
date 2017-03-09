class PlantingsController < ApplicationController
  before_action :set_planting, only: [:show, :update, :destroy]

  # GET /plantings
  def index
    @plantings = Planting.all.includes(:plant)
    render json: @plantings, include: %w(plant)
  end

  # GET /plantings/1
  def show
    render json: @planting
  end

  # POST /plantings
  def create
    @planting = Planting.new(planting_params)

    if @planting.save
      render json: @planting, status: :created, location: @planting
    else
      render json: @planting.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /plantings/1
  def update
    if @planting.update(planting_params)
      render json: @planting
    else
      render json: @planting.errors, status: :unprocessable_entity
    end
  end

  # DELETE /plantings/1
  def destroy
    @planting.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_planting
      @planting = Planting.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def planting_params
      params.require(:planting).permit(:plant_id, :planting_type, :planting_date_begin, :planting_date_end, :days_to_harvest_from, :days_to_harvest_to,)
    end
end
