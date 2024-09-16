require 'rails_helper'

RSpec.describe Brand, type: :model do
  describe 'associations' do
    it { is_expected.to have_many(:car_models) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    context 'when creating two brands with the same name' do
      let(:brand) { create(:brand) }
      let(:invalid_brand) { build(:brand, name: brand.name) }

      it 'raises an exception when trying to create an invalid brand' do
        expect { invalid_brand.save! }.to raise_exception(ActiveRecord::RecordInvalid)
      end
    end
  end
end
