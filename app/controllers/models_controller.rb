class ModelsController < ApplicationController
  def index
    render json: CarModel.select(:id, :name, :average_price)
  end

  def update
    @model = CarModel.find(params[:id])
    @model.update!(models_params)
    render json: { id: @model.id, name: @model.name, average_price: @model.average_price }
  rescue StandardError => e
    render json: { errors: e.message }
  end

  def models_params
    params.permit(:average_price)
  end
end
