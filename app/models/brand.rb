class Brand < ApplicationRecord
  has_many :car_models

  validates :name, presence: true
end
