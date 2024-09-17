class BrandsController < ApplicationController
  def index
    brands = Brand.all.includes(:car_models)
    render json: brands.map { |brand| { id: brand.id, name: brand.name, average_price: brand.average_price } }
  end

  def create
    @brand = Brand.create!(brands_params)
    render json: { id: @brand.id, name: @brand.name }
  rescue StandardError => e
    render json: { errors: e.message }
  end

  def brand_models
    @brand = Brand.find(params[:id])
    render json: @brand.car_models.select(:id, :name, :average_price)
  rescue StandardError => e
    render json: { errors: e.message }
  end

  def brands_params
    params.permit(:name)
  end
end
