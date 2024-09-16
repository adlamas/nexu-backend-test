require 'rails_helper'

RSpec.describe CarModel, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:brand) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    context 'when creating two car models for a brand with the same name' do
      let(:car_model) { create(:car_model) }
      let(:invalid_car_model) { build(:car_model, brand: car_model.brand, name: car_model.name) }

      it 'raises an exception when trying to create an invalid car_model' do
        expect { invalid_car_model.save! }.to raise_exception(ActiveRecord::RecordInvalid)
      end
    end
  end
end
