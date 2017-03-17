class ReadingsController < ApplicationController
  before_action :set_reading, only: [:show, :update, :destroy]

  # GET /readings
  def index

    if params[:sensor_type] and !params[:startDate].blank? and !params[:endDate].blank?
      puts '*************HELLO'
      startd = params[:startDate].to_datetime.strftime('%a, %d %b %Y %H:%M:%S')
      endd = params[:endDate].to_datetime.strftime('%a, %d %b %Y %H:%M:%S')
      @readings=Reading.where(:sensor_type => params[:sensor_type]).where("created_at >= ? AND created_at <= ?", startd, endd).order(created_at: :desc)
      #.where("created_at > ?", 1.day.ago)
    else
      @readings=Reading.where(:sensor_type => params[:sensor_type]).where("created_at >= ? ", 24.hours.ago).order(created_at: :desc)
      #@readings = Reading.where("created_at >= ?", 24.hours.ago).order(created_at: :desc)
    end
   
    render json: @readings
  end

  # GET /readings/1
  def show
    render json: @reading
  end

  # POST /readings
  def create
    @reading = Reading.new(reading_params)

    if @reading.save
      render json: @reading, status: :created, location: @reading
    else
      render json: @reading.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /readings/1
  def update
    if @reading.update(reading_params)
      render json: @reading
    else
      render json: @reading.errors, status: :unprocessable_entity
    end
  end

  # DELETE /readings/1
  def destroy
    @reading.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reading
      @reading = Reading.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def reading_params
      params.require(:reading).permit(:value, :sensor_type)
    end
end
