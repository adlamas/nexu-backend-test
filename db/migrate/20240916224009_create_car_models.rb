class CreateCarModels < ActiveRecord::Migration[7.1]
  def change
    create_table :car_models do |t|
      t.string :name, null: false
      t.integer :average_price, null: true
      t.references :brand, null: false

      t.timestamps
    end
  end
end
