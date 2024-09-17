require 'json'

json_file = Rails.root.join('db', 'fixtures', 'car_models.json')
car_data = JSON.parse(File.read(json_file), symbolize_names: true)

car_data.each do |car|
  brand = Brand.find_or_create_by!(name: car[:brand_name])

  car_model = CarModel.new(name: car[:name], average_price: car[:average_price], brand:)
  car_model.valid? ? car_model.save! : next
end

puts 'Created models and brands'
