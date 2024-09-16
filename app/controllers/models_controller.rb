class ModelsController < ApplicationController
  def index
    render json: CarModel.select(:id, :name, :average_price)
  end
end
