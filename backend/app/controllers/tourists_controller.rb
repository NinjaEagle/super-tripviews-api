class TouristsController < ApplicationController
  before_action :set_tourist, only: [:show, :update, :destroy]

  # GET /tourists
  def index
    @tourists = Tourist.all

    render json: @tourists
  end

  # GET /tourists/1
  def show
    render json: @tourist
  end

  # POST /tourists
  def create
    @tourist = Tourist.new(tourist_params)

    if @tourist.save
      render json: @tourist, status: :created, location: @tourist
    else
      render json: @tourist.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tourists/1
  def update
    if @tourist.update(tourist_params)
      render json: @tourist
    else
      render json: @tourist.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tourists/1
  def destroy
    @tourist.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tourist
      @tourist = Tourist.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tourist_params
      params.require(:tourist).permit(:name, :age, :review)
    end
end
