class CarModel < ApplicationRecord
  belongs_to :brand

  validates :name, presence: true,
                   uniqueness: { scope: :brand_id, message: 'You already have a Car model with this same name' }
  validates :average_price, numericality: { greater_than: 100_000 }, allow_nil: true
end
