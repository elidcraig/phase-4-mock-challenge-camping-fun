class CampersController < ApplicationController
  def index
    render json: Camper.all
  end

  def show
    render json: Camper.find(params[:id]), serializer: CamperShowSerializer
  end

  def create
    new_camper = Camper.create!(camper_params)
    render json: new_camper, status: :created
  end

  private

  def camper_params
    params.permit(:name, :age)
  end
end
