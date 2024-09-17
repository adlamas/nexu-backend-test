class Brand < ApplicationRecord
  has_many :car_models

  validates :name, presence: true, uniqueness: true

  def average_price
    car_models.average(:average_price).to_f
  end
end
